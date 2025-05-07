<template>
  <button
    @click="props.onClick"
    class="group inline-flex w-max items-center bg-black text-white px-6 py-2 rounded-full transition-colors duration-300 hover:bg-gray-200 hover:text-black font-mono"
  >
    <span>{{ props.text }}</span>
    <span class="ml-2 transform transition-transform duration-300 group-hover:translate-x-2">
      →
    </span>
  </button>
</template>

<script setup>
import { defineProps } from 'vue'

const props = defineProps({
  text: { type: String, required: true },
  onClick: { type: Function, required: false },
})
</script>
