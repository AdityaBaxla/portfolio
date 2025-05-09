<template>
  <div class="navbar font-mono flex justify-between items-center font-bold">
    <router-link to="/" class="nav-left text-lg">arb.</router-link>
    <div class="nav-right flex gap-x-4 text-black">
      <router-link to="/information" class="hover:text-pink-400 transition"
        >Information</router-link
      >
      <router-link to="/writing" class="hover:text-pink-400 transition">Writing</router-link>
      <router-link to="/contact" class="hover:text-pink-400 transition">Contact</router-link>
    </div>
  </div>
</template>

<style scoped></style>
