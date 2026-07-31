<script setup>
import Home from './components/Home.vue'
import Navbar from './components/Navbar.vue'
import About from './components/About.vue'
import Projects from './components/Projects.vue'
import Contact from './components/Contact.vue'
</script>

<template>
  <Navbar />
  <Home />
  <About />
  <Projects />
  <Contact />
</template>

<style>
html {
  scroll-behavior: smooth;
}
</style>
