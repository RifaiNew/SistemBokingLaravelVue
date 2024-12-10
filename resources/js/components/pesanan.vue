<template>
  <main>
    <div class="main-warung" v-for="pesanan in pesananList" :key="pesanan.id">
      <div class="list-view-item">
        <img :src="`/assets/${pesanan.image}`" alt="Card Image" class="list-view-img">
        <div class="list-view-content">
          <h2 class="list-view-title">{{ pesanan.warung ? pesanan.warung.namaWarung : 'Warung tidak ditemukan' }}</h2>
          <p class="harga-text">{{ pesanan.harga }}/orang</p>
          <p class="list-view-text">Jumlah: {{ pesanan.jumlahOrang }}</p>
          <p class="list-view-text">Tanggal: {{ pesanan.tanggalPemesanan }}</p>
          <p class="list-view-text">Waktu: {{ pesanan.waktuPemesanan }}</p>
          <p class="list-view-text">Instruksi: {{ pesanan.instruksi }}</p>
        </div>
        <div class="right-content" style="margin-top: 70px;">
            <div class="status" style="padding: 40px;">{{ pesanan.status }}</div>
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
      pesananList: []
    };
  },
  mounted() {
    this.fetchBokingData();
  },
  methods: {
    async fetchBokingData() {
      try {
    const response = await axios.get('/api/boking', {
      headers: { Authorization: `Bearer ${this.$store.getters.token}` }
    });

    this.pesananList = response.data;
  } catch (error) {
    console.error('Error fetching boking data:', error);
  }
    }
  }
};
</script>
