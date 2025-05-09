<template>
  <h1 class="text-4xl font-[500]">Information</h1>
  <hr class="mt-5 mb-5 text-gray-200 -mx-4" />

  <article class="text-lg text-gray-600 font-[200]">
    <div>
      Hi, I’m Aditya Rishab Baxla — a curious mind driven by creativity, discipline, and a passion
      for building meaningful things. Whether I’m writing code, solving problems, or exploring new
      ideas, I approach every challenge with focus and purpose.

      <div class="mt-4"></div>
      I’m a software engineer with a background in full-stack development, specializing in
      JavaScript frameworks like Vue.js and React. I have a knack for turning complex concepts into
      simple, user-friendly solutions. I believe in the power of simplicity, clarity, and
      authenticity.
      <div class="mt-4"></div>

      My journey has always been about learning, adapting, and growing — not just professionally,
      but personally. I enjoy working at the intersection of technology and people, where thoughtful
      design meets real-world impact.
      <div class="mt-4"></div>

      Over the years, I’ve worked on diverse projects that reflect both technical strength and
      human-centered thinking. My interests range across development, strategy, and design — but at
      the heart of it all, I care most about making things that are useful, honest, and lasting.
      <div class="mt-4"></div>

      Outside of work, you’ll probably find me experimenting with new tools, reading something
      insightful, or helping others navigate their own paths. This site reflects my values, my
      voice, and my work. If something resonates with you, feel free to reach out — I’m always open
      to meaningful conversations and collaborations.

      <div class="mt-4"></div>

      Let’s build something worthwhile.
    </div>
  </article>
  <h2 class="text-2xl">Work Experience</h2>

  <section class="py-10 px-6 md:px-10">
    <ul class="space-y-10">
      <ExperienceItem v-for="(item, index) in experiences" :key="index" v-bind="item" />
    </ul>
  </section>
  <h2 class="text-2xl">Education</h2>
  <section class="py-10 px-6 md:px-10">
    <ul class="space-y-10">
      <ExperienceItem v-for="(item, index) in educations" :key="index" v-bind="item" />
    </ul>
  </section>
  <div
    class="cursor-pointer mt-10 text-sm font-[200] text-gray-700 hover:text-pink-500 transition"
    @click="downloadResume"
  >
    Download resume →
  </div>
</template>

<script>
import ExperienceItem from '../components/WorkExperienceComp.vue'

export default {
  name: 'ExperienceSection',
  components: { ExperienceItem },
  data() {
    return {
      experiences: [
        {
          company: 'Mainframe',
          role: 'Design Engineer',
          start: 'November 2024',
          end: 'Present',
          logo: 'https://static.cdnlogo.com/logos/t/46/tiktok-icon-black.svg',
        },
        {
          company: 'MoonPay',
          role: 'Senior Front-End Engineer',
          start: 'April 2022',
          end: 'August 2024',
          logo: 'https://static.cdnlogo.com/logos/w/30/who.svg',
        },
        {
          company: 'Monzo',
          role: 'Web Engineer / Product Designer',
          start: 'May 2019',
          end: 'November 2021',
          logo: 'https://static.cdnlogo.com/logos/i/27/iit-madras.svg',
        },

        {
          company: 'Kalo',
          role: 'UI Engineer',
          start: 'February 2017',
          end: 'May 2019',
          logo: 'https://static.cdnlogo.com/logos/m/30/mongodb-icon.svg',
        },
        {
          company: 'Pusher',
          role: 'Front-end Developer',
          start: 'September 2015',
          end: 'January 2017',
          logo: 'https://static.cdnlogo.com/logos/m/41/microsoft-teams.svg',
        },
      ],
      educations: [
        {
          company: 'Indian Institute of Technology, Madras',
          role: 'Bachelor of Technology in Computer Science and Engineering',
          start: '2011',
          end: '2015',
          logo: 'https://static.cdnlogo.com/logos/i/27/iit-madras.svg',
        },
        {
          company: 'St. Xavier’s School',
          role: 'Higher Secondary School Certificate',
          start: '2009',
          end: '2011',
          logo: 'https://stxaviersschool.com/wp-content/uploads/2020/09/logo_r.jpg',
        },
      ],
    }
  },
  methods: {
    downloadResume() {
      const link = document.createElement('a')
      link.href =
        'https://docs.google.com/document/d/1XN122WxiKj5qCdtduOCzTWgOYgYXv5IdrbR_Jp-ixCQ/export?format=pdf'
      link.download = 'Aditya_Baxla_Resume.pdf'
      document.body.appendChild(link)
      link.click()
      document.body.removeChild(link)
    },
  },
}
</script>
