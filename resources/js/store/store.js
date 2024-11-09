// store.js
import { createStore } from 'vuex';
import actions from './actions';
import mutations from './mutations';
import { getters } from './getters';
import axios from 'axios';

const token = localStorage.getItem('auth_token');
if (token) {
    axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
}

const store = createStore({
    state: {
        user: null,
        token: localStorage.getItem('auth_token') || null,
        warung: [],
        produk: []
    },
    mutations: {
        ...mutations,
        SET_USER(state, user) {
            state.user = user;
        },
        SET_TOKEN(state, token) {
            state.token = token;
            localStorage.setItem('auth_token', token);
            axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
        },
        SET_WARUNG(state, warung) {
            state.warung = warung;
        },
        DELETE_WARUNG(state, idWarung) {
            state.warung = state.warung.filter(warung => warung.idWarung !== idWarung);
        },
        UPDATE_WARUNG(state, updatedWarung) {
            const index = state.warung.findIndex(w => w.idWarung === updatedWarung.idWarung);
            if (index !== -1) {
                state.warung.splice(index, 1, updatedWarung); // Replace the old data with the updated data
            }
        },
        UPDATE_PRODUCT(state, updatedProduk) {
            const warung = state.warung.find(w => w.idWarung === updatedProduk.idWarung);
            if (warung && warung.produk) {
                const productIndex = warung.produk.findIndex(product => product.idProduk === updatedProduk.idProduk);
                if (productIndex !== -1) {
                    warung.produk.splice(productIndex, 1, updatedProduk); // Replace the old product with the updated one
                } else {
                    console.error('Product not found in the warung');
                }
            } else {
                console.error('Warung or Produk array not found');
            }
        },
        DELETE_PRODUCT(state, productId) {
            state.warung.produk = state.warung.produk.filter(product => product.idProduk !== productId);
        }      
    },
    actions: {
        ...actions,
        async loginUser({ commit }, credentials) {
            const response = await axios.post('/api/login', credentials);
            console.log('User data:', response.data.user);
            commit('SET_USER', response.data.user);
            commit('SET_TOKEN', response.data.token);
            return response.data;
        },
        logoutUser({ commit }) {
            localStorage.removeItem('auth_token');
            commit('SET_USER', null);
            commit('SET_TOKEN', null);
            delete axios.defaults.headers.common['Authorization'];
        },
        async fetchWarung({ commit }) {
            try {
                const response = await axios.get('/api/warung');
                commit('SET_WARUNG', response.data);
            } catch (error) {
                console.error('Error fetching warung:', error);
            }
        },
        async deleteWarung({ commit }, idWarung) {
            await axios.delete(`/api/warung/${idWarung}`);
            commit('DELETE_WARUNG', idWarung);
        },
        async addWarung({ commit }, warungData) {
            try {
                const response = await axios.post('/api/warung', warungData);
                commit('SET_WARUNG', [...this.state.warung, response.data.warung]);
                return response.data;
            } catch (error) {
                console.error('Error adding warung:', error.response.data);
                throw error; 
            }
        },
        async updateWarung({ commit }, { idWarung, updatedData, config }) {
            try {
                const response = await axios.post(`/api/warung/${idWarung}?_method=PUT`, updatedData, config);
                commit('UPDATE_WARUNG', response.data.warung);
                return response.data;
            } catch (error) {
                console.error('Error updating warung:', error);
                throw error;
            }
        },
        async addProduct({ commit }, formData) {
            try {
              const response = await axios.post('/api/produk', formData);  // POST the data to your API
              console.log('Produk berhasil ditambahkan:', response.data);
              return response.data;
            } catch (error) {
              console.error('Error adding product:', error);
              throw error;
            }
        },
        async updateProduct({ commit }, { idProduk, updatedData, config }) {
            try {
                const response = await axios.post(`/api/produk/${idProduk}?_method=PUT`, updatedData, config);
                commit('UPDATE_PRODUCT', response.data.produk);
            } catch (error) {
                console.error('Error updating product:', error);
                throw error;
            }
        },
        async deleteProduct({ commit }, productId) {
            try {
                await axios.delete(`/api/produk/${productId}`);
                commit('DELETE_PRODUCT', productId);
            } catch (error) {
                console.error('Error deleting product:', error);
                throw error;
            }
        }
        
        
        
    },
    getters: {
        user: state => state.user,
        token: state => state.token,
        warung: state => state.warung
    }
});

export default store;
