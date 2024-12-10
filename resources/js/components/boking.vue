<template>
  <div class="order-form">
    <h2>{{ warung.nama }}</h2>
    <form @submit.prevent="submitForm">
      <label for="name">Nama:</label>
      <input type="text" id="name" name="name" required v-model="nama">

      <label for="phone">Nomor Telepon:</label>
      <input type="tel" id="phone" name="phone" required v-model="noTelp">

      <label for="quantity">Jumlah Orang:</label>
      <input type="number" id="quantity" name="quantity" v-model="jumlah" min="1" required>

      <label for="date">Tanggal Pemesanan:</label>
      <input type="date" id="date" name="date" v-model="date" required>

      <label for="time">Waktu Pemesanan:</label>
      <input type="time" id="time" name="time" v-model="time" required>

      <label for="additional">Tambahan:</label>
      <textarea id="additional" name="additional" v-model="additional"></textarea>

      <p>Total Harga: <span id="total-price">{{ totalPrice }}</span></p>
      <button type="submit">Pesan</button>
    </form>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      warung: { nama: '', harga: 0, id: 2 },
      jumlah: 1,
      date: '',
      time: '',
      additional: '',
      nama: '',
      noTelp: '',
    };
  },
  mounted() {
    this.fetchWarungDetails();
  },
  methods: {
    async fetchWarungDetails() {
      const warungId = this.$route.params.id;
      const nama = this.$route.params.nama;
      const harga = this.$route.params.harga;
      this.warung = { nama: nama, harga: harga, id: warungId };

      try {
        const response = await axios.get(`/api/warung/${warungId}`);
        this.warung = response.data;
      } catch (error) {
        console.error('Error fetching warung details:', error);
      }
    },
    getUserId() {
      return localStorage.getItem('userId');
    },
    submitForm() {
      const userId = this.$store.getters.user?.idUser;

      if (!userId) {
        console.error('User is not logged in.');
        return;
      }
      const isConfirmed = window.confirm('Apakah Anda yakin ingin memesan?');
      if (!isConfirmed) {
        console.log('Pesanan dibatalkan.');
        return;
      }
      const payload = {
        idUser: this.$store.getters.user.idUser,
        idWarung: this.$route.params.id,
        jumlahOrang: this.jumlah,
        tanggalPemesanan: this.date,
        waktuPemesanan: this.time,
        harga: this.totalPrice,
        instruksi: this.additional,
        status: 'pending'
      };

      axios.post('/api/boking', payload, {
        headers: { Authorization: `Bearer ${this.$store.getters.token}` }
      })
      .then(response => {
        console.log('Pesanan berhasil dibuat:');
        this.$router.push('/pesanan');
      })
      .catch(error => {
        console.error('Gagal membuat pesanan:', error.response ? error.response.data : error.message);
      });
    }
  },
  computed: {
    totalPrice() {
      return this.jumlah * this.warung.harga;
    },
  },
};
</script>
