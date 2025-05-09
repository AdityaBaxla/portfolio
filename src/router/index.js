import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/HomeView.vue'
import Work from '../views/WorkView.vue'
import About from '../views/AboutView.vue'
import NotFound from '../views/NotFoundView.vue'
import InformationView from '@/views/InformationView.vue'
import WritingView from '@/views/WritingView.vue'

const routes = [
  { path: '/', name: 'Home', component: Home },
  { path: '/work', name: 'Work', component: Work },
  { path: '/about', name: 'About', component: About },
  { path: '/information', name: 'information', component: InformationView },
  { path: '/writing', name: 'writing', component: WritingView },

  // Catch-all route for 404 Not Found
  { path: '/:pathMatch(.*)*', name: 'NotFound', component: NotFound },
]

export default createRouter({
  history: createWebHistory(),
  routes,
})
