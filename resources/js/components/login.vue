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
                
                // Save token (optional: can be stored in Vuex for central management)
                localStorage.setItem('auth_token', response.data.token);

                await this.$store.dispatch('loginUser', {
                    email: this.email,
                    password: this.password,
                });

                // Redirect based on role
                const userRole = response.data.user.role;
                if (userRole === 'admin') {
                    this.$router.push('/adminForm'); // Redirect to admin form if user is an admin
                } else {
                    this.$router.push('/'); // Redirect to the homepage or another page
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