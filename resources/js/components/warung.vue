<template>
  <main>
    <div class="main-warung">
      <div v-for="warung in warung" :key="warung.idWarung" class="list-view-item">
        <img :src="`/assets/${warung.gambarWarung}`" :alt="warung.namaWarung" class="list-view-img">
        <div class="list-view-content">
          <h2 class="list-view-title">{{ warung.namaWarung }}</h2>
          <p class="harga-text">{{ warung.harga }}/orang</p>
          <p class="list-view-text">{{ warung.status }}</p>
          <p class="list-view-text">{{ warung.deskripsi }}</p>
          <router-link 
            :to="{ name: 'detailwarung', params: { id: warung.idWarung, harga: warung.harga, nama: warung.namaWarung } }" 
            class="list-view-button">
            Detail
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
    ...mapState(['warung']), // Ensure this matches your store's state
  },
  mounted() {
    this.$store.dispatch('fetchWarung');
  },
};
</script>

<style scoped>
/* Add your styles here */
</style>
