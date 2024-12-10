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
import warungAdmin from '../components/warungAdmin.vue';

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
        beforeEnter: (to, from, next) => {
            const user = store.getters.user;
            if (user && user.role === 'admin') {
                next();
            } else {
                next('/');
            }
        }
    },
    { 
        path: '/tambahProduk/:idWarung',
        component:tambahProduk,
        beforeEnter: (to, from, next) => {
            const user = store.getters.user;
            if (user && user.role === 'admin') {
                next();
            } else {
                next('/');
            }
        }
    },
    { 
        path: '/ubahWarung/:idWarung',
        name: 'ubahWarung',
        component: ubahWarung,
        props: true,
        beforeEnter: (to, from, next) => {
            const user = store.getters.user;
            if (user && user.role === 'admin') {
                next();
            } else {
                next('/');
            }
        }
    },
    { 
        path: '/ubahProduk/:idProduk',
        name: 'ubahProduk',
        component: ubahProduk,
        props: true,
        beforeEnter: (to, from, next) => {
            const user = store.getters.user;
            if (user && user.role === 'admin') {
                next();
            } else {
                next('/');
            }
        }
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
        component: adminForm,
        beforeEnter: (to, from, next) => {
            const user = store.getters.user;
            if (user && user.role === 'admin') {
                next();
            } else {
                next('/');
            }
        }
    },    
    { 
        path: '/warungAdmin',
        name: 'warungAdmin',
        component: warungAdmin,
        beforeEnter: (to, from, next) => {
            const user = store.getters.user;
            if (user && user.role === 'admin') {
                next();
            } else {
                next('/');
            }
        }
    }, 
    {
        path: '/adminproduk/:idWarung',
        name: 'Produk',
        component: adminproduk,
        beforeEnter: (to, from, next) => {
            const user = store.getters.user;
            if (user && user.role === 'admin') {
                next();
            } else {
                next('/');
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
    linkExactActiveClass: 'active',
    routes
});

export default router;