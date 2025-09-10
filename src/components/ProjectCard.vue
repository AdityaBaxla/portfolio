<template>
  <div
    class="project-card max-w-sm shadow-xl rounded-xl overflow-hidden hover:bg-slate-200 bg-slate-50 p-5 transition duration-300 ease-in-out"
  >
    <!-- Image wrapper enforces 16:9 -->
    <div class="aspect-video w-full rounded-xl overflow-hidden">
      <img :src="image_src" alt="" class="object-cover w-full h-full" />
    </div>

    <!-- Content -->
    <div class="p-4">
      <h2 class="text-xl mb-2 font-[500]">{{ title }}</h2>
      <p class="text-gray-700">{{ description }}</p>
      <!-- <a v-if="link" :href="link" class="mt-4 inline-block text-blue-600 hover:underline">
        Learn more →
      </a> -->
    </div>
  </div>
</template>

<script>
import image from '@/assets/images/awesome-design-systems.webp'
import imag1 from '../assets/images/linky.webp'

export default {
  name: 'ProjectCard',
  props: {
    title: { type: String, required: true },
    description: { type: String, required: true },
    link: { type: String, required: false },
    image_src: { type: String, required: true },
    // image: { type: String, required: true },
  },
  data() {
    return {}
  },
}
</script>

<style scoped>
/* No extra CSS needed—everything is handled by Tailwind */
</style>
