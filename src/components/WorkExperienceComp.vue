<template>
  <li class="flex items-start gap-7">
    <!-- Logo -->
    <img
      :src="logo"
      alt="Company logo"
      class="w-20 h-20 rounded-lg shadow-md object-contain bg-white"
    />

    <!-- Info -->
    <div class="flex-1 border-b border-gray-200 pb-6">
      <h3 class="text-lg font-semibold text-gray-900">{{ company }}</h3>
      <p class="text-sm text-gray-700 mb-1">{{ role }}</p>
      <p class="text-sm text-gray-500">{{ start }} → {{ end }}</p>
    </div>
  </li>
</template>

<script>
export default {
  name: 'ExperienceItem',
  props: {
    company: String,
    role: String,
    start: String,
    end: String,
    logo: String,
  },
}
</script>
