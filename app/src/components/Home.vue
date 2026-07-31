<script setup>
</script>

<template>
  <section class="home" id="home">
    <div class="container">
      <p class="intro">Hi, I'm Brian,</p>

      <h1>
        Aspiring Cloud & DevOps Engineer
      </h1>

      <p class="subtitle">
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
  position: relative;
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  padding-top: 1rem; /* keeps same visual spacing as the old fixed nav */
  padding-bottom: 12vh;
  box-sizing: border-box;
}

.container {
  position: relative;
  width: min(100%, 1200px);
  padding: 0 4rem;
  text-align: center;
  min-height: calc(100vh - 24vh);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.intro {
  color: var(--text-muted);
  font-size: 1.5rem;
  margin: 0 0 4rem;
}

h1 {
  font-size: clamp(4rem, 1vw, 8rem);
  line-height: 0.95;
  font-weight: 400;
  color: var(--text);
  margin: 0 0 4rem;
}

.subtitle {
  font-size: 1.6rem;
  color: var(--text-muted);
  margin: 0 0 2rem;
}

.scroll-indicator {
  position: absolute;
  left: 50%;
  bottom: 2vh;
  transform: translateX(-50%);
  margin: 0;
  font-size: 3rem;
  color: var(--text);
}
</style>