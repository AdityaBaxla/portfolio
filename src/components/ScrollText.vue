<template>
  <div class="scroll-text">
    <p>{{ text }}</p>
  </div>
</template>

<script>
export default {
  props: ['text'],
}
</script>

<style scoped>
.scroll-text {
  text-align: center;
  margin: 2rem 0;
  font-size: 1.25rem;
  font-weight: bold;
}
</style>
