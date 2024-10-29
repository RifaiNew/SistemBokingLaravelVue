// store.js
import { createStore } from 'vuex';
import actions from './actions';
import mutations from './mutations';
import { getters } from './getters';
import axios from 'axios';

const store = createStore({
    state: {
        user: null,
        token: localStorage.getItem('auth_token') || null,
        warung: [],
    },
    mutations: {
        ...mutations,
        SET_USER(state, user) {
            state.user = user;
        },
        SET_TOKEN(state, token) {
            state.token = token;
            localStorage.setItem('auth_token', token);
        },
        SET_WARUNG(state, warung) { // Tambahkan mutation untuk warung
            state.warung = warung;
        },
        DELETE_WARUNG(state, idWarung) {
            state.warung = state.warung.filter(warung => warung.idWarung !== idWarung);
        },
        UPDATE_WARUNG(state, updatedWarung) {
            const index = state.warung.findIndex(warung => warung.idWarung === updatedWarung.idWarung);
            if (index !== -1) {
                state.warung.splice(index, 1, updatedWarung); // Update the warung in the state
            }
        },        
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
            // Hapus token dari localStorage
            localStorage.removeItem('auth_token');

            // Reset state user dan token
            commit('SET_USER', null);
            commit('SET_TOKEN', null);
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
                commit('SET_WARUNG', [...this.state.warung, response.data.warung]); // Add the new warung to the existing list
                return response.data; // Return response for further handling if needed
            } catch (error) {
                console.error('Error adding warung:', error.response.data); // Log the error response
                throw error; // Rethrow error for further handling in the component
            }
        },
        async updateWarung({ commit }, { idWarung, warungData }) {
            const config = {
                headers: { 'Content-Type': 'multipart/form-data' }
            };            
            try {
                const response = await axios.put(`/api/warung/${idWarung}`, warungData);
                commit('UPDATE_WARUNG', response.data.warung); // Commit the updated warung to the state
                return response.data;
            } catch (error) {
                console.error('Error updating warung:', error.response.data);
                throw error;
            }
        },
        
        
        
    },
    getters: {
        user: state => state.user,
        token: state => state.token,
        warung: state => state.warung
    }
});

export default store;
