<template>
    <div class="order-form">
        <h2>Ubah Produk</h2>
        <form @submit.prevent="submitForm">
            <label for="namaProduk">Nama Produk:</label>
            <input type="text" id="namaProduk" v-model="namaProduk" required>

            <label for="gambarProduk">Gambar Produk:</label>
            <input type="file" id="gambarProduk" @change="onFileChange">

            <label for="harga">Harga:</label>
            <input type="number" id="harga" v-model="harga" required>

            <label for="status">Status:</label>
            <input type="text" id="status" v-model="status" required>

            <label for="deskripsi">Deskripsi:</label>
            <textarea id="deskripsi" v-model="deskripsi" required></textarea>

            <button type="submit">Ubah Produk</button>
        </form>
    </div>
</template>


<script>
import { mapGetters } from 'vuex';
import axios from 'axios';

export default {
    data() {
        return {
            idProduk: this.$route.params.idProduk, // Should be idProduk, not idWarung
            namaProduk: '', // Corrected field name
            gambarProduk: null, // Corrected field name
            harga: '',
            status: '',
            deskripsi: '',
            selectedFile: null
        };
    },
    computed: {
        ...mapGetters(['user'])
    },
    async created() {
        const response = await axios.get(`/api/produk/${this.idProduk}`); // Fetching product details
        const produk = response.data;

        this.namaProduk = produk.namaProduk; // Updated from namaWarung
        this.harga = produk.harga;
        this.status = produk.status;
        this.deskripsi = produk.deskripsi;
    },
    methods: {
        async submitForm() {
            const formData = new FormData();
            formData.append('namaProduk', this.namaProduk || ''); // Corrected field name
            formData.append('harga', this.harga || '');
            formData.append('status', this.status || '');
            formData.append('deskripsi', this.deskripsi || '');

            if (this.selectedFile) {
                formData.append('gambarProduk', this.selectedFile); // Corrected field name
            }

            const config = {
                headers: {
                    'Authorization': `Bearer ${this.$store.state.token}`,
                    'Content-Type': 'multipart/form-data'
                }
            };
            for (let pair of formData.entries()) {
                console.log(pair[0]+ ', ' + pair[1]); 
            }

            try {
                await this.$store.dispatch('updateProduct', { idProduk: this.idProduk, updatedData: formData, config });
                alert('Produk berhasil diperbarui!');
                this.$router.push('/adminForm');
            } catch (error) {
                if (error.response && error.response.status === 422) {
                    alert('Validasi gagal: ' + JSON.stringify(error.response.data.errors));
                } else {
                    console.error('Error updating product:', error);
                }
            }
        },
        onFileChange(e) {
            this.selectedFile = e.target.files[0];
        }
    }
};
</script>
