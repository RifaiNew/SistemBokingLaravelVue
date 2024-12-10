<template>
    <main>
        <div class="content">
            <div class="content-description">
                <h1 class="title">Nibung</h1>
                <h4>08:00 - 23:00 Wita</h4>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut veritatis temporibus illum quasi necessitatibus est aspernatur quidem, optio, quod ut corporis nihil, aliquam odit enim quo! Totam atque rerum amet! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Suscipit nesciunt ut similique vero harum voluptas eveniet veritatis? Facilis, iste nemo saepe quo placeat, temporibus a corporis laborum neque doloribus dignissimos?</p>
                <div class="btn-primary">
                    <router-link to="/warung" class="btn-warung">Lihat Warung</router-link>
                    <a href="/contact" class="btn-contact">Contact</a>
                </div>
            </div>
            <div class="content-image">
                <img src="/assets/warungnibng.jpeg" alt="" class="landing-image">
            </div>
        </div>

        <div class="main-card">
            <div class="title">
                <h1>Warung Kami</h1>
            </div>
            <div class="cards">
                <div class="card" v-for="warung in warungs" :key="warung.idWarung">
                    <img :src="`/assets/${warung.gambarWarung}`" :alt="warung.namaWarung" class="card-img">
                    <div class="card-content">
                        <h2 class="card-title">{{ warung.namaWarung }}</h2>
                        <p class="harga-text">{{ warung.harga }}/orang</p>
                        <p>{{ warung.status }}</p>
                        <p class="card-text">{{ warung.deskripsi }}</p>
                        <router-link 
                            :to="{ name: 'detailwarung', params: { id: warung.idWarung, harga: warung.harga, nama: warung.namaWarung } }" 
                            class="list-view-button">
                            Detail
                        </router-link>
                    </div>
                </div>
            </div>
        </div>
    </main>
</template>

<script>
export default {
    data() {
        return {
            warungs: [] // warung akan diisi dengan data dari API
        };
    },
    created() {
        this.fetchWarungs();
    },
    methods: {
        fetchWarungs() {
            fetch('/api/warung') // sesuaikan dengan URL API yang digunakan
                .then(response => response.json())
                .then(data => {
                    // Ambil 3 warung secara acak
                    this.warungs = this.getRandomWarungs(data, 3); 
                })
                .catch(error => console.error('Error fetching warungs:', error));
        },
        // Fungsi untuk memilih 3 warung secara acak
        getRandomWarungs(warungs, count) {
            const shuffled = [...warungs].sort(() => 0.5 - Math.random()); // Acak data warung
            return shuffled.slice(0, count); // Ambil 3 pertama
        }
    }

};
</script>