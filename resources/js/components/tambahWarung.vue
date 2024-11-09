<template>
    <div class="order-form">
      <h2>Tambah Warung</h2>
    <form @submit.prevent="submitForm">
        <label for="namaWarung">Nama Warung:</label>
        <input type="text" id="namaWarung" v-model="namaWarung" required>

        <label for="gambarWarung">Gambar Warung:</label>
        <input type="file" id="gambarWarung" @change="onFileChange" required>

        <label for="harga">Harga:</label>
        <input type="number" id="harga" v-model="harga" required>

        <label for="status">Status:</label>
        <input type="text" id="status" v-model="status" required>

        <label for="deskripsi">Deskripsi:</label>
        <textarea id="deskripsi" v-model="deskripsi" required></textarea>

        <button type="submit">Tambah Warung</button>
    </form>

    </div>
  </template>

<script>
import { mapActions, mapGetters } from 'vuex';

export default {
  data() {
    return {
      namaWarung: '',
      gambarWarung: null,
      harga: '',
      status: '',
      deskripsi: ''
    };
  },
  computed: {
    ...mapGetters(['user']) // Get the user from the Vuex store
  },
  methods: {
    ...mapActions(['addWarung']), // Map the addWarung action

    async submitForm() {
      const formData = new FormData();
      formData.append('namaWarung', this.namaWarung);
      formData.append('gambarWarung', this.gambarWarung);
      formData.append('harga', this.harga);
      formData.append('status', this.status);
      formData.append('deskripsi', this.deskripsi);
      formData.append('idUser', this.user.idUser); 

      try {
        await this.addWarung(formData);
        alert('Warung berhasil ditambahkan');
        this.$router.push('/adminForm');
      } catch (error) {
        alert('Gagal menambahkan warung: ' + error.response.data.message);
      }
    },

    onFileChange(e) {
      this.gambarWarung = e.target.files[0];
    }
  }
};
</script>
