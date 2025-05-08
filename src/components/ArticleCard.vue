<template>
  <article
    class="bg-slate-50 p-4 rounded-lg shadow-md hover:shadow-lg transition-shadow duration-300 w-full"
  >
    <h2 class="text-xl font-bold mb-1">{{ title }}</h2>
    <p class="text-sm font-mono text-gray-500">{{ date }}</p>
    <p class="text-gray-700">{{ description }}</p>
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
