<template>
  <h1 class="text-4xl font-[500]">Writing</h1>
  <hr class="mt-5 mb-5 text-gray-200 -mx-4" />
  <ArticleCard
    date="6th Jan 2025"
    description="Ullamco reprehenderit irure voluptate laborum eu in mollit ipsum cillum exercitation dolore."
    title="Ullamco sint est dolor anim"
  ></ArticleCard>
  <hr class="text-gray-200" />
  <ArticleCard
    date="6th Jan 2025"
    description="Ullamco reprehenderit irure voluptate laborum eu in mollit ipsum cillum exercitation dolore."
    title="Ullamco sint est dolor anim"
  ></ArticleCard>
  <hr class="text-gray-200" />
  <ArticleCard
    date="6th Jan 2025"
    description="Ullamco reprehenderit irure voluptate laborum eu in mollit ipsum cillum exercitation dolore."
    title="Ullamco sint est dolor anim"
  ></ArticleCard>
  <hr class="text-gray-200" />
  <ArticleCard
    date="6th Jan 2025"
    description="Ullamco reprehenderit irure voluptate laborum eu in mollit ipsum cillum exercitation dolore."
    title="Ullamco sint est dolor anim"
  ></ArticleCard>
  <hr class="text-gray-200" />

  <ArticleCard
    date="6th Jan 2025"
    description="Ullamco reprehenderit irure voluptate laborum eu in mollit ipsum cillum exercitation dolore."
    title="Ullamco sint est dolor anim"
  ></ArticleCard>
  <hr class="text-gray-200" />
</template>

<script>
import ArticleCard from '@/components/ArticleCard.vue'
import WritingCardComp from '@/components/WritingCardComp.vue'

export default {
  name: 'ExperienceSection',
  components: { WritingCardComp, ArticleCard },
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
}
</script>
