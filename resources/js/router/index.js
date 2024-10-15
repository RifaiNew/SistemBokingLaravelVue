import { createRouter, createWebHistory } from 'vue-router';

import home from '../components/HomePage.vue';
import about from '../components/about.vue';
import warung from '../components/warung.vue';
import detailwarung from '../components/detailwarung.vue';

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
        path: '/detailwarung',
        component:detailwarung,
    }
]

const router = createRouter({ 
    history:createWebHistory(),
    routes
});

export default router;