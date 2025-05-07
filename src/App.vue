<template>
  <router-view />
  <FooterComponent />
</template>

<script>
import Footer from './components/FooterComponent.vue'
export default {
  components: { FooterComponent: Footer },
}
</script>
