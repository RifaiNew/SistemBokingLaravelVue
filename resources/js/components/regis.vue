<template>
    <div class="login-form">
        <h2>Registrasi</h2>
        <form @submit.prevent="handleSubmit">
            <label for="nama">Nama</label>
            <input type="text" id="nama" v-model="nama" placeholder="Masukkan nama anda" required>
            
            <label for="email">Email</label>
            <input type="email" id="email" v-model="email" placeholder="Masukkan email anda" required>
            
            <label for="noTelp">No. Telp</label>
            <input type="text" id="noTelp" v-model="noTelp" placeholder="Masukkan no. telp anda" required>
            
            <label for="password">Password</label>
            <input type="password" id="password" v-model="password" placeholder="Masukkan password anda" required>
            
            <button type="submit">Login</button>
        </form>
        <p class="register-text">
            Sudah punya akun?
            <router-link to="/login">Login di sini</router-link>
        </p>
    </div>
</template>

<script>
import axios from 'axios';

export default {
    data() {
        return {
            nama: '',
            password: '',
            noTelp: '',
            email: '',
            role: ''
        };
    },
    methods: {
        async handleSubmit() {
            try {
                const userData = {
                    nama: this.nama,
                    email: this.email,
                    noTelp: this.noTelp,
                    password: this.password,
                    role: 'pelanggan'
                };
                
                // Kirim data ke server
                const response = await axios.post('/api/users', userData);
                alert(response.data.message);

                this.$router.push('/login');
            } catch (error) {
                console.error('Registration failed:', error);
                alert('Pendaftaran gagal: ' + error.response.data.message);
            }
        }
    }
};
</script>