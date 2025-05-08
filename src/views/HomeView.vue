<template>
  <div>
    <HeroSection />
    <hr class="mt-12 mb-12 text-gray-200" />
    <ProjectsSection />
    <hr class="mt-12 mb-12 text-gray-200" />
    <ArticleSection />
  </div>
</template>

<script>
import HeroSection from '../components/HeroSection.vue'
import ScrollText from '../components/ScrollText.vue'
import ProjectCard from '../components/ProjectCard.vue'
import ProjectsSection from '@/components/ProjectsSection.vue'
import ArticleSection from '@/components/ArticleSection.vue'

export default {
  components: { HeroSection, ScrollText, ProjectCard, ProjectsSection, ArticleSection },
}
</script>
