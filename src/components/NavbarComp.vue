<template>
  <div class="navbar font-mono flex justify-between items-center font-bold">
    <router-link to="/" class="nav-left text-lg">arb.</router-link>
    <div class="nav-right flex gap-x-4 text-black hover:text-pink-400 transition">
      <router-link to="/information" class="text-black">Information</router-link>
      <router-link to="/writing">Writing</router-link>
      <router-link to="/contact">Contact</router-link>
    </div>
  </div>
</template>

<style scoped></style>
