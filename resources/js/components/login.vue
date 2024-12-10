<template>
    <div class="login-form">
        <h2>Login</h2>
        <form @submit.prevent="handleLogin">
            <label for="email">Email</label>
            <input type="email" v-model="email" placeholder="Masukkan email anda" required>
            
            <label for="password">Password</label>
            <input type="password" v-model="password" placeholder="Masukkan password anda" required>
            
            <button type="submit">Login</button>
        </form>
        <p class="register-text">
            Belum punya akun?
            <router-link to="/regis">Registrasi di sini</router-link>
        </p>
    </div>
</template>

<script>
import axios from 'axios';

export default {
    data() {
        return {
            email: '',
            password: ''
        };
    },
    methods: {
        async handleLogin() {
            try {
                const response = await axios.post('/api/login', {
                    email: this.email,
                    password: this.password,
                });
                
                localStorage.setItem('auth_token', response.data.token);

                await this.$store.dispatch('loginUser', {
                    email: this.email,
                    password: this.password,
                });

                const userRole = response.data.user.role;
                if (userRole === 'admin') {
                    this.$router.push('/adminForm');
                } else {
                    this.$router.push('/');
                }
                
                alert(response.data.message);
            } catch (error) {
                console.error('Login failed:', error);
                alert('Login gagal: ' + (error.response?.data?.message || 'An error occurred'));
            }
        }
    }
};
</script>