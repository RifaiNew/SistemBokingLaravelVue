<template>
    <main>
      <div class="btn-pesan">
            <h3>{{ warung.price }}/orang</h3>
            <div class="btn-primary">
                <router-link to="/boking" class="btn-warung">Boking</router-link>
            </div>
      </div>
      <div class="product-wrapper">
            <div v-for="product in warung.products" :key="product.id" class="product-item">
                <img :src="`/assets/${product.image}`" :alt="product.title" class="product-img">
                <div class="product-content">
                    <h2>{{ product.title }}</h2>
                    <p>{{ product.description }}</p>
                    <p>Harga: <span class="harga-text">{{ product.price }}</span></p>
                    <p>Status: {{ product.status }}</p>
                </div>
            </div>
        </div>
    </main>
</template>   
  
  <script>
  export default {
    data() {
      return {
        warung: {},
      };
    },
    mounted() {
      const warungId = this.$route.params.id;
      const data = {
        id: warungId,
        price: '15000',
        products: [
          { id: 1, title: 'Nasi Goreng Biasa', description: 'Lorem ipsum...', price: '20000', status: 'tersedia', image: 'nasgor.jpg' },
          { id: 2, title: 'Nasi Goreng Mawut', description: 'Lorem ipsum...', price: '20000', status: 'tidak tersedia', image: 'nasgor.jpg' },
        ],
      };
      this.warung = data;
    },
  };
  </script>
  