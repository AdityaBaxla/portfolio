<template>
  <!-- outer flex wrapper -->
  <div class="flex justify-center pt-10">
    <!-- inner constrained box -->
    <div class="w-full max-w-4xl px-5 md:px-30 flex flex-col mt-10 gap-y-10">
      <NavbarComp />
      <router-view />
      <FooterComponent />
    </div>
  </div>
</template>

<script>
import Footer from './components/FooterComponent.vue'
import NavbarComp from './components/NavbarComp.vue'
export default {
  components: { FooterComponent: Footer, NavbarComp },
}
</script>

<style scoped></style>
