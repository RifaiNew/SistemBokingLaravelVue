import axios from 'axios';

const actions = {
    async registerUser({ commit }, userData) {
        try {
            const response = await axios.post('/api/users', userData);
            commit('SET_USER', response.data.user);
            return response.data;
        } catch (error) {
            throw new Error(error.response.data.message || 'Registration failed');
        }
    },
    async loginUser({ commit }, credentials) {
        try {
            const response = await axios.post('/api/login', credentials);
            commit('SET_USER', response.data.user); // Mengupdate state user
            commit('SET_TOKEN', response.data.token); // Mengupdate state token
            return response.data; // Mengembalikan data response
        } catch (error) {
            throw new Error(error.response.data.message || 'Login failed');
        }
    },
    // Tambahkan aksi lain di sini jika diperlukan
};

export default actions; // Ekspor default
