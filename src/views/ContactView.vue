<template>
  <section>
    <h1 class="text-4xl font-[500]">Contact</h1>
    <hr class="mt-5 mb-5 text-gray-200 -mx-4" />

    <p class="text-lg text-gray-600 font-[200] mb-8">
      I’m always open to thoughtful conversations, project ideas, or collaborations. Whether it’s a
      quick hello or something more involved, feel free to reach out.
    </p>

    <div class="grid grid-cols-2 sm:grid-cols-4 gap-6 text-center">
      <a
        v-for="(item, i) in socialLinks"
        :key="i"
        :href="item.link"
        target="_blank"
        rel="noopener noreferrer"
        class="flex flex-col items-center gap-2 text-gray-700 hover:text-pink-500 transition cursor-pointer"
      >
        <i :class="['pi', item.icon, 'text-3xl']" />
        <span class="text-sm font-medium">{{ item.label }}</span>
      </a>
    </div>
  </section>
</template>

<script>
export default {
  name: 'Contact',
  data() {
    return {
      socialLinks: [
        {
          label: 'GitHub',
          link: 'https://github.com/adityabaxla',
          icon: 'pi-github',
        },
        {
          label: 'LinkedIn',
          link: 'https://www.linkedin.com/in/aditya-baxla/',
          icon: 'pi-linkedin',
        },
        {
          label: 'Gmail',
          link: 'mailto:adityabaxla@gmail.com',
          icon: 'pi-envelope',
        },
        {
          label: 'YouTube',
          link: 'https://www.youtube.com/@adityabaxla',
          icon: 'pi-youtube',
        },
        {
          label: 'LeetCode',
          link: 'https://leetcode.com/adityabaxla/',
          icon: 'pi-code',
        },
        {
          label: 'CodeChef',
          link: 'https://www.codechef.com/users/adityabaxla',
          icon: 'pi-bolt',
        },
        {
          label: 'Twitter',
          link: 'https://twitter.com/adityabaxla',
          icon: 'pi-twitter',
        },
        {
          label: 'Medium',
          link: 'https://twitter.com/adityabaxla',
          icon: 'pi-file-edit',
        },
      ],
    }
  },
}
</script>
