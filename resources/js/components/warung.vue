<template>
    <main>
      <div class="main-warung">
        <div v-for="warung in warungs" :key="warung.id" class="list-view-item">
        <img :src="`/assets/${warung.image}`" :alt="warung.title" class="list-view-img">
          <div class="list-view-content">
            <h2 class="list-view-title">{{ warung.title }}</h2>
            <p class="harga-text">{{ warung.price }}/orang</p>
            <p class="list-view-text">{{ warung.status }}</p>
            <p class="list-view-text">{{ warung.description }}</p>
            <router-link :to="`/detailwarung/${warung.id}`" class="list-view-button">Detail</router-link>
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
          { id: 1, title: 'Warung nasi goreng citra rasa', price: '15000', status: 'Open', description: 'Lorem ipsum...', image: 'gambarres.jpg' },
          { id: 2, title: 'Warung Sate Ayam', price: '20000', status: 'Open', description: 'Lorem ipsum...', image: 'gambarres.jpg' },
        ],
      };
    },
  };
  </script>