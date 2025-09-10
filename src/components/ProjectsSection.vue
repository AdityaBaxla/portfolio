<template>
  <section class="px-4">
    <h3 class="text-2xl text-black font-[600]">Featured Projects</h3>
    <p class="text-lg text-gray-600 font-[500] mt-4">Here's a list of my best projects.</p>

    <!-- center items in each column -->
    <div class="grid grid-cols-1 md:grid-cols-2 gap-7 mt-7 justify-items-center -mx-30">
      <ProjectCard
        title="Git Tracker"
        description="Tracking student's project status via github commits, using RAG pipeline to validate the code"
        :image_src="gittracker"
      />
      <ProjectCard
        title="Mentorship Portal (Contributor)"
        description="Connect course mentors and mentees"
        :image_src="mentorship"
      />
      <ProjectCard
        title="Appdev Docs"
        description="Full documentation for Appdev Courses"
        :image_src="appdevdocs"
      />
    </div>

    <ButtonComp class="mt-7" text="All Projects" @click="$router.push('/projects')" />
  </section>
</template>

<script>
import ButtonComp from './ButtonComp.vue'
import ProjectCard from './ProjectCard.vue'

import gittracker from '../assets/images/project_ss/gittracker.png'
import mentorship from '@/assets/images/project_ss/mentorship.png'
import appdevdocs from '@/assets/images/project_ss/appdevdocs.png'

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
