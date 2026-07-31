<script setup>
import Home from './components/Home.vue'
import Navbar from './components/Navbar.vue'
import About from './components/About.vue'
import Projects from './components/Projects.vue'
import End from './components/End.vue'
</script>

<template>
  <Navbar />
  <Home />
  <About />
  <Projects />
  <End />
</template>

<style>
html {
  scroll-behavior: smooth;
}
</style>
