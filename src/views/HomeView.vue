<template>
  <div>
    <HeroSection />
    <ScrollText text="Featured Projects" />
    <ProjectCard
      title="Portfolio Website"
      description="A minimal portfolio built with Vue.js."
      link="#"
    />
  </div>
</template>

<script>
import HeroSection from '../components/HeroSection.vue'
import ScrollText from '../components/ScrollText.vue'
import ProjectCard from '../components/ProjectCard.vue'

export default {
  components: { HeroSection, ScrollText, ProjectCard },
}
</script>
