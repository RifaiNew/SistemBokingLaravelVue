<template>
    <main>
    <div class="btn-pesan">
        <div class="btn-primary">
            <router-link :to="`/tambahProduk/${warung.idWarung}`" class="btn-warung">Tambah Produk</router-link>
        </div>
    </div>
      <div class="product-wrapper">
        <div v-for="product in warung.produk" :key="product.idProduk" class="product-item">
          <img :src="`/assets/${product.gambarProduk}`" :alt="product.gambarProduk" class="product-img">
          <div class="product-content">
            <h2>{{ product.namaProduk }}</h2>
            <p>{{ product.deskripsi }}</p>
            <p>Harga: <span class="harga-text">{{ product.harga }}</span></p>
            <p>Status: {{ product.status }}</p>
            <router-link :to="`/ubahProduk/${product.idProduk}`" class="list-view-button">
                Ubah
            </router-link>
            <router-link to="#" class="list-view-button" @click.prevent="deleteProduct(product.idProduk)">
                Hapus
            </router-link>
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
            idWarung: null, 
            produk: [],
        },
      };
    },
    mounted() {
      this.fetchWarung();
    },
    methods: {
        async fetchWarung() {
            const warungId = this.$route.params.idWarung;
            this.warung.idWarung = warungId; 
            try {
                const response = await axios.get(`/api/warung/${warungId}/produks`);
                this.warung.produk = response.data;
                console.log('Fetched products:', this.warung.produk);
            } catch (error) {
                console.error('Error fetching warung data:', error);
            }
        },
        async deleteProduct(productId) {
            if (confirm('Apakah Anda yakin ingin menghapus produk ini?')) {
                try {
                    await axios.delete(`/api/produk/${productId}`);
                    this.warung.produk = this.warung.produk.filter(product => product.idProduk !== productId);
                    alert('Produk berhasil dihapus!');
                } catch (error) {
                    console.error('Error deleting product:', error);
                    alert('Gagal menghapus produk.');
                }
            }
        }
    },
  };
  </script>
  