import { createRouter, createWebHistory } from 'vue-router';

import home from '../components/HomePage.vue';
import about from '../components/about.vue';
import warung from '../components/warung.vue';
import detailwarung from '../components/detailwarung.vue';
import pesanan from '../components/pesanan.vue';
import contact from '../components/contact.vue';
import boking from '../components/boking.vue';
import login from '../components/login.vue';
import regis from '../components/regis.vue';

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
        path: '/detailwarung/:id',
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
        path: '/boking',
        component:boking,
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