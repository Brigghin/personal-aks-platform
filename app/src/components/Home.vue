<script setup>
</script>

<template>
  <section class="home" id="home">
    <div class="container">
      <p class="intro">Hi, I'm Brian</p>

      <h1>
        Aspiring Cloud & DevOps Engineer
      </h1>

      <p class="subtitle">
        Cloud Infrastructure • DevOps • Automation
      </p>

      <p class="description">
        I build scalable cloud infrastructure and automate workflows
        to create reliable, efficient, and modern platforms.
      </p>

      <div class="scroll-indicator">
        ↓
      </div>
    </div>
  </section>
</template>

<style scoped>
.home {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
}

.container {
  padding: 0 2rem;
  text-align: center;
}

.intro {
  color: var(--text-muted);
  font-size: 1.5rem;
  margin-bottom: 1rem;
}

h1 {
  font-size: clamp(4rem, 1vw, 8rem);
  line-height: 0.95;
  font-weight: 400;
  color: var(--text);
  margin-bottom: 1.5rem;
}

.subtitle {
  font-size: 1.6rem;
  color: var(--text-muted);
  margin-bottom: 2rem;
}

.description {
  max-width: 650px;
  margin: 0 auto;
  font-size: 1.2rem;
  line-height: 1.8;
  color: var(--text);
}

.scroll-indicator {
  margin-top: 5rem;
  font-size: 3rem;
  color: var(--text);
}
</style>