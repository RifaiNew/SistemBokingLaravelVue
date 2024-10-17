<template>
    <div class="login-form">
        <h2>Login</h2>
        <form action="" method="POST">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Masukkan email anda" required>
            
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Masukkan password anda" required>
            
            <button type="submit">Login</button>
        </form>
        <p class="register-text">
            Belum punya akun?
            <router-link to="/regis">Registrasi di sini</router-link>
        </p>
    </div>
</template>