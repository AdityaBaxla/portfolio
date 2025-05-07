<template>
  <div class="project-card">
    <h2>{{ title }}</h2>
    <p>{{ description }}</p>
    <!-- <a :href="link" target="_blank">View Project</a> -->
  </div>
</template>

<script>
export default {
  props: ['title', 'description', 'link'],
}
</script>

<style scoped>
/* .project-card {
  margin: 2rem 0;
} */
</style>
