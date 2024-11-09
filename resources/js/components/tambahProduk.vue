<template>
    <div class="order-form">
      <h2>Tambah Produk</h2>
      <form @submit.prevent="submitForm">
        <label for="namaProduk">Nama Produk:</label>
        <input type="text" id="namaProduk" v-model="namaProduk" required>
  
        <label for="gambarProduk">Gambar Produk:</label>
        <input type="file" id="gambarProduk" @change="onFileChange" required>
  
        <label for="harga">Harga:</label>
        <input type="number" id="harga" v-model="harga" required>
  
        <label for="status">Status:</label>
        <input type="text" id="status" v-model="status" required>
  
        <label for="deskripsi">Deskripsi:</label>
        <textarea id="deskripsi" v-model="deskripsi" required></textarea>
  
        <button type="submit">Tambah Produk</button>
      </form>
    </div>
  </template>
  
  <script>
  import { mapActions, mapGetters } from 'vuex';
  
  export default {
    data() {
      return {
        idWarung: this.$route.params.idWarung,
        namaProduk: '',  // Changed from namaWarung to namaProduk
        gambarProduk: null,  // Changed from gambarWarung to gambarProduk
        harga: '',
        status: '',
        deskripsi: ''
      };
    },
    computed: {
      ...mapGetters(['user'])  // Get the user from the Vuex store
    },
    methods: {
      ...mapActions(['addProduct']),  // Add a map action for adding a product
  
      async submitForm() {
        const formData = new FormData();
        formData.append('namaProduk', this.namaProduk);  // Append product data
        formData.append('gambarProduk', this.gambarProduk);
        formData.append('harga', this.harga);
        formData.append('status', this.status);
        formData.append('deskripsi', this.deskripsi);
        formData.append('idUser', this.user.idUser);
        formData.append('idWarung', this.idWarung);
  
        try {
          await this.addProduct(formData);
          alert('Produk berhasil ditambahkan');
          this.$router.push('/adminForm');
        } catch (error) {
          alert('Gagal menambahkan produk: ' + error.response.data.message);
        }
      },
  
      onFileChange(e) {
        this.gambarProduk = e.target.files[0];
      }
    }
  };
  </script>
  