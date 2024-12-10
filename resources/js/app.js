// resources/js/app.js
import './bootstrap';
import { createApp } from 'vue';
import axios from 'axios'; // Import axios
import store from './store/store.js';
import router from './router';
import ExampleComponent from './components/ExampleComponent.vue';

// Configure Axios to include the auth token in all requests if available
axios.interceptors.request.use(config => {
    const token = localStorage.getItem('auth_token');
    if (token) {
        config.headers.Authorization = `Bearer ${token}`;
    }
    return config;
});

createApp(ExampleComponent).use(store).use(router).mount('#app');
