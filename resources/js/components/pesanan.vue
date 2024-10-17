<template>
    <main>
      <div class="main-warung" v-for="pesanan in pesananList" :key="pesanan.id">
        <div class="list-view-item">
          <img :src="`/assets/${pesanan.image}`" alt="Card Image" class="list-view-img">
          <div class="list-view-content">
            <h2 class="list-view-title">{{ pesanan.title }}</h2>
            <p class="harga-text">{{ pesanan.price }}/orang</p>
            <p class="list-view-text">{{ pesanan.status }}</p>
            <p class="list-view-text">{{ pesanan.description }}</p>
          </div>
          <div class="status">{{ pesanan.orderStatus }}</div>
        </div>
      </div>
    </main>
  </template>
  
  <script>
  export default {
    data() {
      return {
        pesananList: [
          { id: 1, title: 'Warung nasi goreng citra rasa', price: '15000', status: 'Open', description: 'Lorem ipsum...', orderStatus: 'Pending', image: 'gambarres.jpg' },
          { id: 2, title: 'Warung nasi goreng citra rasa', price: '15000', status: 'Open', description: 'Lorem ipsum...', orderStatus: 'Pending', image: 'gambarres.jpg' },
        ],
      };
    },
  };
  </script>
  