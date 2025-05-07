<template>
  <section class="flex flex-col">
    <h1 class="text-4xl font-[500]">Hi, I'm Aditya.</h1>
    <h3 class="text-2xl text-gray-500">Educator and Software Developer</h3>
    <p class="text-lg text-gray-600 font-[500] mt-4">
      I am a software engineer with a passion for building web applications and teaching. I have
      experience in full-stack development, specializing in JavaScript frameworks like Vue.js and
      React.
    </p>
    <ButtonComp class="mt-7" text="More Information" />
  </section>
</template>

<script>
import ButtonComp from './ButtonComp.vue'

export default {
  name: 'HeroSection',
  components: {
    ButtonComp,
  },
}
</script>

<style scoped>
/* .hero {
  padding: 4rem 2rem;
  text-align: center;
} */
</style>
