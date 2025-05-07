import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/HomeView.vue'
import Work from '../views/WorkView.vue'
import About from '../views/AboutView.vue'

const routes = [
  { path: '/', name: 'Home', component: Home },
  { path: '/work', name: 'Work', component: Work },
  { path: '/about', name: 'About', component: About },
]

export default createRouter({
  history: createWebHistory(),
  routes,
})
