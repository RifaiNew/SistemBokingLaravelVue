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
            deskripsi: ''
        };
    },
    computed: {
        ...mapGetters(['user'])
    },
    async created() {
        const response = await axios.get(`/api/warung/${this.idWarung}`);
        const warung = response.data;

        // Populate form with existing warung data
        this.namaWarung = warung.namaWarung;
        this.harga = warung.harga;
        this.status = warung.status;
        this.deskripsi = warung.deskripsi;
    },
    methods: {
        async submitForm() {
            const formData = new FormData();
            formData.append('namaWarung', this.namaWarung);
            if (this.gambarWarung) {
                formData.append('gambarWarung', this.gambarWarung);
            }
            formData.append('harga', this.harga);
            formData.append('status', this.status);
            formData.append('deskripsi', this.deskripsi);
            
            // Logging the formData entries
            for (const [key, value] of formData.entries()) {
                console.log(`${key}:`, value);
            }

            try {
                await this.$store.dispatch('updateWarung', { idWarung: this.idWarung, warungData: formData });
                alert('Warung berhasil diubah');
                this.$router.push('/warung'); // Redirect to warung list after updating
            } catch (error) {
                alert('Gagal mengubah warung: ' + error.response.data.message);
            }
        },
        onFileChange(e) {
            this.gambarWarung = e.target.files[0];
            console.log('Selected file:', this.gambarWarung);
        }

    }
};
</script>
