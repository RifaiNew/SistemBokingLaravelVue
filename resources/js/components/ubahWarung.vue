<template>
    <div class="order-form">
        <h2>Ubah Warung</h2>
        <form @submit.prevent="submitForm">
            <label for="namaWarung">Nama Warung:</label>
            <input type="text" id="namaWarung" v-model="namaWarung" required>

            <label for="gambarWarung">Gambar Warung:</label>
            <input type="file" id="gambarWarung" @change="onFileChange">

            <label for="harga">Harga:</label>
            <input type="number" id="harga" v-model="harga" required>

            <label for="status">Status:</label>
            <input type="text" id="status" v-model="status" required>

            <label for="deskripsi">Deskripsi:</label>
            <textarea id="deskripsi" v-model="deskripsi" required></textarea>

            <button type="submit">Ubah Warung</button>
        </form>
    </div>
</template>

<script>
import { mapGetters } from 'vuex';
import axios from 'axios';

export default {
    data() {
        return {
            idWarung: this.$route.params.idWarung,
            namaWarung: '',
            gambarWarung: null,
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
        const response = await axios.get(`/api/warung/${this.idWarung}`);
        const warung = response.data;

        this.namaWarung = warung.namaWarung;
        this.harga = warung.harga;
        this.status = warung.status;
        this.deskripsi = warung.deskripsi;
    },
    methods: {
    async submitForm() {
        const formData = new FormData();
        formData.append('namaWarung', this.namaWarung || '');
        formData.append('harga', this.harga || '');
        formData.append('status', this.status || '');
        formData.append('deskripsi', this.deskripsi || '');

        if (this.selectedFile) {
            formData.append('gambarWarung', this.selectedFile);
        }

        const config = {
            headers: {
                'Authorization': `Bearer ${this.$store.state.token}`,
                'Content-Type': 'multipart/form-data'
            }
        };

        try {
            await this.$store.dispatch('updateWarung', { idWarung: this.idWarung, updatedData: formData, config });
            alert('Warung updated successfully!');
        } catch (error) {
            if (error.response && error.response.status === 422) {
                alert('Validation failed: ' + JSON.stringify(error.response.data.errors));
            } else {
                console.error('Error updating warung:', error);
            }
        }
        },
        onFileChange(e) {
            this.selectedFile = e.target.files[0];
        }
    }
};
</script>
