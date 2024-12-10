<template>
  <main>
    <div class="main-warung">
      <div class="btn-pesan">
        <div class="btn-primary">
          <router-link to="/warungAdmin" class="btn-warung">Form Warung</router-link>
        </div>
      </div>
      <div v-for="pesanan in pesananList" :key="pesanan.id" class="list-view-item">
        <img :src="`/assets/${pesanan.warung.gambarWarung}`" :alt="pesanan.warung.namaWarung" class="list-view-img">
        <div class="list-view-content">
          <p class="list-view-text">Harga : {{ pesanan.harga }}</p>
          <p class="list-view-text">Nama Pemesan: {{ pesanan.user ? pesanan.user.nama : 'Tidak ditemukan' }}</p>
          <p class="list-view-text">Jumlah: {{ pesanan.jumlahOrang }}</p>
          <p class="list-view-text">Tanggal: {{ pesanan.tanggalPemesanan }}</p>
          <p class="list-view-text">Waktu: {{ pesanan.waktuPemesanan }}</p>
          <p class="list-view-text">Instruksi: {{ pesanan.instruksi }}</p>
          <router-link to="#" class="list-view-button" @click="hapusPesanan(pesanan)">Hapus</router-link>
        </div>
        <div class="right-content" style="margin-top: 70px;">
          <p class="list-view-text">
            <router-link to="#" class="status" :class="pesanan.status" style="padding: 40px;" @click="toggleStatus(pesanan)">{{ pesanan.status }}</router-link>
          </p>
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
      pesananList: [],
    };
  },
  mounted() {
    this.fetchAllPesanan();
  },
  methods: {
    // Fetch all pesanan
    async fetchAllPesanan() {
      try {
        const response = await axios.get('/api/allPesanan', {
          headers: { Authorization: `Bearer ${this.$store.getters.token}` },
        });
        this.pesananList = response.data;
      } catch (error) {
        console.error('Error fetching pesanan data:', error);
      }
    },

    // Toggle status between 'confirmed' and 'pending'
    async hapusPesanan(pesanan) {
      console.log('Pesanan ID:', pesanan.idBoking); // Use pesanan.id
      try {
        const response = await axios.delete(`/api/pesanan/${pesanan.idBoking}`, {
          headers: { Authorization: `Bearer ${this.$store.getters.token}` },
        });
        this.pesananList = [
          ...this.pesananList.filter(p => p.idBoking !== pesanan.idBoking)
        ];
        console.log('Pesanan berhasil dihapus:', response.data.message);
      } catch (error) {
        console.error('Error deleting pesanan:', error);
      }
    },

    // Toggle status between 'confirmed' and 'pending'
    async toggleStatus(pesanan) {
      console.log('Pesanan yang diubah:', pesanan); // Debug
      try {
        const newStatus = pesanan.status === 'pending' ? 'confirmed' : 'pending';
        pesanan.status = newStatus;

        const response = await axios.put(`/api/pesanan/${pesanan.idBoking}`, { status: newStatus }, {
          headers: { Authorization: `Bearer ${this.$store.getters.token}` },
        });

        console.log('Status updated successfully', response.data);
      } catch (error) {
        console.error('Error updating status:', error);
        pesanan.status = pesanan.status === 'pending' ? 'confirmed' : 'pending';
      }
    },
  },
};
</script>
