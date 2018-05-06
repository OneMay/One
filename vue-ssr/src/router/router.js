import Vue from 'vue'
import Router from 'vue-router'
import home from './../components/Home.vue'
import item from './../components/Item.vue'
Vue.use(Router)
export function createRouter() {
    return new Router({
        mode: 'history',
        routes: [{
                path: '/',
                component: home
            },
            {
                path: '/item',
                component: item
            }
        ]
    })
}