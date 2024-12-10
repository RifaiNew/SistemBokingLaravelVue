<template>
    <main>
      <div class="main-warung">
        <div class="btn-pesan">
            <div class="btn-primary">
                <router-link to="/tambahWarung" class="btn-warung">Tambah Warung</router-link>
            </div>
        </div>
        <div v-for="warung in warung" :key="warung.idWarung" class="list-view-item">
          <img :src="`/assets/${warung.gambarWarung}`" :alt="warung.namaWarung" class="list-view-img">
          <div class="list-view-content">
            <h2 class="list-view-title">{{ warung.namaWarung }}</h2>
            <p class="harga-text">{{ warung.harga }}/orang</p>
            <p class="list-view-text">{{ warung.status }}</p>
            <p class="list-view-text">{{ warung.deskripsi }}</p>
            <router-link to="#" class="list-view-button" @click.prevent="deleteWarung(warung.idWarung)">
                Hapus
            </router-link>
            <router-link :to="`/ubahWarung/${warung.idWarung}`" class="list-view-button">
                Ubah
            </router-link>
          </div>
          <div class="right-content" style="margin-top: 70px;">
            <router-link :to="`/adminproduk/${warung.idWarung}`" class="list-view-button">
                Produk
            </router-link>
          </div>
        </div>
      </div>
    </main>
  </template>
  
  <script>
  import { mapState } from 'vuex';
  
  export default {
    computed: {
      ...mapState(['warung']),
    },
    mounted() {
      this.$store.dispatch('fetchWarung');
    },
    methods: {
      async deleteWarung(idWarung) {
        if (confirm('Apakah Anda yakin ingin menghapus warung ini?')) {
          try {
            await this.$store.dispatch('deleteWarung', idWarung);
            alert('Warung berhasil dihapus!');
          } catch (error) {
            console.error('Error deleting warung:', error);
            alert('Gagal menghapus warung.');
          }
        }
      }
    }
  };
  </script>