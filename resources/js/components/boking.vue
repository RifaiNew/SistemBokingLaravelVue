<template>
    <div class="order-form">
        <h2>{{ warung.title }}</h2>
        <form @submit.prevent="submitForm">
            <label for="name">Nama:</label>
            <input type="text" id="name" name="name" required>

            <label for="phone">Nomor Telepon:</label>
            <input type="tel" id="phone" name="phone" required>

            <label for="quantity">Jumlah Orang:</label>
            <input type="number" id="quantity" name="quantity" v-model="quantity" min="1" required>

            <label for="date">Tanggal Pemesanan:</label>
            <input type="date" id="date" name="date" required>

            <label for="time">Waktu Pemesanan:</label>
            <input type="time" id="time" name="time" required>

            <label for="additional">Tambahan:</label>
            <textarea id="additional" name="additional"></textarea>

            <p>Total Harga: <span id="total-price">{{ totalPrice }}</span></p>
            <button type="submit">Pesan</button>
        </form>
    </div>
</template>

<script>
export default {
  data() {
    return {
      warung: { title: 'Warung Nasi Goreng Citra Rasa' }, // Atau ambil dari route params
      quantity: 1,
      pricePerPerson: 15000,
    };
  },
  computed: {
    totalPrice() {
      return this.quantity * this.pricePerPerson;
    },
  }
};
</script>