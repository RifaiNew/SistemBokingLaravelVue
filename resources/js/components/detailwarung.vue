<template>
  <main>
    <div class="btn-pesan">
      <h2>{{ warung.nama }}/orang</h2>
      <h3>{{ warung.harga }}/orang</h3>
      <div class="btn-primary">
        <router-link :to="{ name: 'boking', params: { id: warung.id, harga: warung.harga, nama: warung.nama } }" class="btn-warung">Boking</router-link>
      </div>
    </div>
    <div class="product-wrapper">
      <div v-for="product in warung.produk" :key="product.id" class="product-item">
        <img :src="`/assets/${product.gambarProduk}`" :alt="product.gambarProduk" class="product-img">
        <div class="product-content">
          <h2>{{ product.namaProduk }}</h2>
          <p>{{ product.deskripsi }}</p>
          <p>Harga: <span class="harga-text">{{ product.harga }}</span></p>
          <p>Status: {{ product.status }}</p>
        </div>
      </div>
    </div>
  </main>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      warung: {
        produk: [],
        id: null,
        harga: 0,
        nama: '0'
      },
    };
  },
  mounted() {
    this.fetchWarung();
  },
  methods: {
    async fetchWarung() {
      const warungId = this.$route.params.id;
      const nama = this.$route.params.nama;

      try {
        const response = await axios.get(`/api/warung/${warungId}/produks`);
        this.warung = {
          id: warungId,
          harga: this.$route.params.harga, // Ambil harga dari parameter
          nama: nama, // Ambil nama dari parameter
          produk: response.data,
        };
      } catch (error) {
        console.error('Error fetching warung data:', error);
      }
    },
  },
};
</script>
