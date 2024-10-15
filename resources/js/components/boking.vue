<template>
    <div class="order-form">
        <h2>Warung Nasi Goreng Citra Rasa</h2>
        <form>
            <label for="name">Nama:</label>
            <input type="text" id="name" name="name" required>

            <label for="phone">Nomor Telepon:</label>
            <input type="tel" id="phone" name="phone" required>

            <label for="quantity">Jumlah Orang:</label>
            <input type="number" id="quantity" name="quantity" required>

            <label for="date">Tanggal Pemesanan:</label>
            <input type="date" id="date" name="date" required>

            <label for="time">Waktu Pemesanan:</label>
            <input type="time" id="time" name="time" required>

            <label for="additional">Tambahan:</label>
            <textarea id="additional" name="additional"></textarea>

            <p>Total Harga: <span id="total-price">Rp. 100.000</span></p>

            <button type="submit">Pesan</button>
        </form>
    </div>
</template>
