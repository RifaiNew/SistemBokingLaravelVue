<template>
    <div class="login-form">
        <h2>Registrasi</h2>
        <form action="" method="POST">
            <label for="name">Nama</label>
            <input type="text" id="name" name="name" placeholder="Masukkan nama anda" required>
            
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Masukkan email anda" required>
            
            <label for="phone">No. Telp</label>
            <input type="tel" id="phone" name="phone" placeholder="Masukkan no. telp anda" required>
            
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Masukkan password anda" required>
            
            <button type="submit">Login</button>
        </form>
        <p class="register-text">
            Sudah punya akun?
            <router-link to="/login">Login di sini</router-link>
        </p>
    </div>

</template>