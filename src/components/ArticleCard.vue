<template>
  <article class="p-4 flex flex-col gap-2 rounded-lg transition-shadow duration-300 w-full">
    <h2 class="text-2xl mb-1">{{ title }}</h2>
    <p class="text-sm font-mono text-gray-500">{{ date }}</p>
    <p class="text-gray-800 font-[300]">{{ description }}</p>
  </article>
</template>

<script>
export default {
  name: 'ArticleCard',
  props: {
    title: {
      type: String,
      required: false,
    },
    description: {
      type: String,
      required: false,
    },
    link: {
      type: String,
      required: false,
    },
    date: {
      type: String,
      required: false,
    },
  },
}
</script>
