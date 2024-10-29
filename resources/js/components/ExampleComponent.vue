<template>
    <header>
        <div class="upper-hero">
            <div class="logo">
                <router-link to="/">NIBUNG.COM</router-link>
            </div>
            <nav>
                <ul>
                    <li>
                        <router-link to="/">Home</router-link>
                    </li>
                    <li>
                        <router-link to="/warung">Warung</router-link>
                    </li>
                    <li>
                        <router-link to="/pesanan">Pesanan</router-link>
                    </li>
                    <li>
                        <router-link to="/about">About</router-link>
                    </li>
                    <li>
                        <router-link to="/contact">Contact</router-link>
                    </li>
                    <li>
                        <router-link v-if="!user" to="/login">Login</router-link>
                        <span v-else @click="logout" style="cursor: pointer;">{{ user.nama }}</span> <!-- Tampilkan nama pengguna -->
                    </li>
                </ul>
            </nav>
        </div>
        <div class="hero">
            <h1>Nibung</h1>
            <p>Warung Makan Enak</p>
        </div>
    </header>

    <router-view/>

    <footer>
        <div class="main-foot">
            <div class="left-foot">
                <p>No telp : 0812345678</p>
                <p>&#169;Copyright by Lamin Company</p>
            </div>
            <div class="right-foot">
                <p>
                    aabbccasdasd@gmail.com
                </p>
                <p>
                    @keren_ngasal
                </p>
            </div>
        </div>
    </footer>
</template>

<script>
import { mapGetters } from 'vuex';

export default {
    computed: {
        ...mapGetters(['user']), // Ambil user dari Vuex
    },
    methods: {
        logout() {
            const confirmed = window.confirm("Apakah Anda yakin ingin keluar?");
            if (confirmed) {
                this.$store.dispatch('logoutUser');
                this.$router.push('/');
            }
        },
    },
};
</script>
