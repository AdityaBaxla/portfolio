<template>
  <section class="px-4">
    <h3 class="text-2xl text-black font-[600]">Featured Projects</h3>
    <p class="text-lg text-gray-600 font-[500] mt-4">Here's a list of my best projects.</p>

    <!-- center items in each column -->
    <div class="grid grid-cols-1 md:grid-cols-2 gap-7 mt-7 justify-items-center">
      <ProjectCard
        title="Hannkyy Putty"
        description="A vue project based on lorem ipsum and stuff"
      />
      <ProjectCard title="Another Project" description="More lorem ipsum here" />
      <ProjectCard title="Third Project" description="Even more lorem ipsum" />
    </div>

    <ButtonComp class="mt-7" text="All Projects" @click="$router.push('/projects')" />
  </section>
</template>

<script>
import ButtonComp from './ButtonComp.vue'
import ProjectCard from './ProjectCard.vue'

import image1 from '../assets/images/flagdb.webp'
import image2 from '@/assets/images/awesome-design-systems.webp'
import image3 from '@/assets/images/linky.webp'

export default {
  name: 'ProjectsSection',
  components: {
    ButtonComp,
    ProjectCard,
  },
}
</script>

<style scoped>
/* .hero {
  padding: 4rem 2rem;
  text-align: center;
} */
</style>
