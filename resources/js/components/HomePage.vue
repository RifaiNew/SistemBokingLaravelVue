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
                <img src="../../assets/warungnibng.jpg" alt="" class="landing-image">
            </div>
        </div>

        <div class="main-card">
            <div class="title">
                <h1>Warung Populer</h1>
            </div>
            <div class="cards">
                <div class="card" v-for="warung in warungs" :key="warung.id">
                    <img :src="`/assets/${warung.image}`" :alt="warung.title" class="card-img">
                    <div class="card-content">
                        <h2 class="card-title">{{ warung.title }}</h2>
                        <p class="harga-text">{{ warung.price }}/orang</p>
                        <p>{{ warung.status }}</p>
                        <p class="card-text">{{ warung.description }}</p>
                        <router-link :to="`/detailwarung/${warung.id}`" class="card-button">Lebih Lanjut</router-link>
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
            warungs: [
                {
                    id: 1,
                    title: 'Warung Nasi Goreng Citra Rasa',
                    price: 15000,
                    status: 'Open',
                    description: 'Lorem ipsum dolor sit amet...',
                    image: 'rangan.png',
                },
                {
                    id: 2,
                    title: 'Warung Nasi Goreng Citra Rasa',
                    price: 15000,
                    status: 'Open',
                    description: 'Lorem ipsum dolor sit amet...',
                    image: 'rangan.png',
                },
                {
                    id: 3,
                    title: 'Warung Nasi Goreng Citra Rasa',
                    price: 15000,
                    status: 'Open',
                    description: 'Lorem ipsum dolor sit amet...',
                    image: 'rangan.png',
                },
            ],
        };
    },
};
</script>