<template>
  <section class="px-4">
    <h3 class="text-2xl text-black font-[600]">Recent Posts</h3>

    <!-- center items in each column -->
    <div class="gap-10 mt-7 justify-items-center">
      <ArticleCard
        title="How to Build a Design System"
        description="A comprehensive guide to building a design system from scratch."
        date="Published on 23rd October 2023"
      />
      <ArticleCard
        title="How to Build a Design System"
        description="A comprehensive guide to building a design system from scratch."
        date="Published on 23rd October 2023"
      />
      <ArticleCard
        title="How to Build a Design System"
        description="A comprehensive guide to building a design system from scratch."
        date="Published on 23rd October 2023"
      />
      <ArticleCard
        title="How to Build a Design System"
        description="A comprehensive guide to building a design system from scratch."
        date="Published on 23rd October 2023"
      />
    </div>

    <ButtonComp class="mt-7" text="All Articles" @click="$router.push('/writing')" />
  </section>
</template>

<script>
import ButtonComp from './ButtonComp.vue'
import ArticleCard from './ArticleCard.vue'

export default {
  name: 'ArticleSection',
  components: {
    ButtonComp,
    ArticleCard,
  },
  data() {
    return {
      articles: [
        {
          title: 'How to Build a Design System',
          description: 'A comprehensive guide to building a design system from scratch.',
          date: 'Published on 23rd October 2023',
        },
        // Add more articles here
      ],
    }
  },
}
</script>
