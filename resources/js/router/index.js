import { createRouter, createWebHistory } from 'vue-router';
import store from '../store/store.js';

import home from '../components/HomePage.vue';
import about from '../components/about.vue';
import warung from '../components/warung.vue';
import detailwarung from '../components/detailwarung.vue';
import pesanan from '../components/pesanan.vue';
import contact from '../components/contact.vue';
import boking from '../components/boking.vue';
import login from '../components/login.vue';
import regis from '../components/regis.vue';
import adminForm from '../components/adminForm.vue';
import tambahWarung from '../components/tambahWarung.vue';
import ubahWarung from '../components/ubahWarung.vue';
import adminproduk from '../components/adminproduk.vue';
import ubahProduk from '../components/ubahProduk.vue';
import tambahProduk from '../components/tambahProduk.vue';

const routes = [
    { 
        path: '/',
        component:home,
    },
    { 
        path: '/about',
        component:about,
    },
    { 
        path: '/warung',
        component:warung,
    },
    { 
        path: '/tambahWarung',
        component:tambahWarung,
    },
    { 
        path: '/tambahProduk/:idWarung',
        component:tambahProduk,
    },
    { 
        path: '/ubahWarung/:idWarung',
        name: 'ubahWarung',
        component: ubahWarung,
        props: true 
    },
    { 
        path: '/ubahProduk/:idProduk',
        name: 'ubahProduk',
        component: ubahProduk,
        props: true 
    },
    { 
        path: '/detailwarung/:id/:harga/:nama',
        name: 'detailwarung',
        component:detailwarung, 
    },
    { 
        path: '/pesanan',
        component:pesanan,
    },
    { 
        path: '/contact',
        component:contact,
    },
    { 
        path: '/boking/:id/:harga/:nama',
        name: 'boking',
        component:boking,
    },    
    { 
        path: '/adminForm',
        name: 'adminForm',
        component: adminForm, // Ganti dengan komponen yang sesuai untuk formAdmin
        beforeEnter: (to, from, next) => {
            const user = store.getters.user; // Ambil data user dari Vuex
            if (user && user.role === 'admin') {
                next(); // Jika admin, lanjutkan ke rute
            } else {
                next('/contact'); // Jika bukan admin, arahkan ke halaman utama atau halaman lain
            }
        }
    },    
    {
        path: '/adminproduk/:idWarung',
        name: 'Produk',
        component: adminproduk, // ganti dengan nama komponen produk Anda
    },
    { 
        path: '/login',
        component:login,
    },
    { 
        path: '/regis',
        component:regis,
    }
]

const router = createRouter({ 
    history: createWebHistory(),
    routes
});

export default router;