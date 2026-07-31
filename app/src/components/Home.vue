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
      </p>

      <div class="scroll-indicator">↓</div>
    </div>
  </section>
</template>

<style scoped>
.home {
  position: relative;
  width: 100%;
  min-height: calc(100vh - 72px);
  display: flex;
  align-items: center;
  justify-content: center;
  box-sizing: border-box;
  padding: 0;
}

.container {
  position: relative;
  width: min(100%, 1200px);
  min-height: calc(100vh - 72px);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  padding: 0;
  box-sizing: border-box;
}

.intro {
  color: var(--text-muted);
  font-size: 1.5rem;
  margin: 0 0 3rem;
}

h1 {
  font-size: clamp(4rem, 1vw, 8rem);
  line-height: 0.95;
  font-weight: 400;
  color: var(--text);
  margin: 0 0 3rem;
}

.subtitle {
  font-size: 1.6rem;
  color: var(--text-muted);
  margin: 0 0 2rem;
}

.scroll-indicator {
  position: absolute;
  left: 50%;
  bottom: 5vh;
  transform: translateX(-50%);
  font-size: 3rem;
  color: var(--text);
  line-height: 1;
}
</style>