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
        path: '/ubahWarung/:idWarung',
        name: 'ubahWarung',
        component: ubahWarung,
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