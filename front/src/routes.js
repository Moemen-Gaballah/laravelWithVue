import Vue from 'vue'
import VueRouter from 'vue-router'

import Login from './components/authentication/Login.vue'
import Register from './components/authentication/Register.vue'
import Feed from './components/Feed.vue'
import ProductCreate from './components/product/Create.vue'
import Productupdate from './components/product/Edit.vue'

Vue.use(VueRouter)

const router = new VueRouter({
    routes: [
        {
            path: "/login",
            // component: require('./components/authentication/Login.vue'),
            component: Login,
            meta: {
                forVisitors: true
            }
        },
        {
            path: "/register",
            // component: require('./components/authentication/Register.vue'),
            component: Register,
            meta: {
                forVisitors: true
            }
        },
        {
            path: '/feed',
            // component: require('./components/Feed.vue'),
            component: Feed,
            meta: {
                forAuth:true
            }
        },
        {
            path: '/products/create',
            // component: require('./components/product/Create.vue'),
            component: ProductCreate,
            meta: {
                forAuth:true
            }
        },
        {
            path: '/products/:product/edit',
            // component: require('./components/product/Create.vue'),
            component: Productupdate,
            meta: {
                forAuth:true
            }
        }
    ],

    mode: 'history',
    linkActiveClass: 'active'
})

export default router