<script setup>
</script>

<template>
  <section class="home" id="home">
    <div class="container">
      <p class="intro"><span class="intro-highlight">Hi, I'm Brian</span>,</p>

      <h1>
        Aspiring <span class="highlight-word">Cloud</span> &amp;
        <span class="highlight-word">DevOps</span> Engineer
      </h1>

      <p class="subtitle">
        I build scalable cloud infrastructure and automate workflows
      </p>

      <a class="scroll-indicator" href="#about" aria-label="Scroll to About section">↓</a>
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
  width: min(100%, 900px);
  min-height: calc(100vh - 72px);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  padding: 0 1rem;
  box-sizing: border-box;
}

.hero-accent {
  width: 4.5rem;
  height: 0.25rem;
  margin-bottom: 1.4rem;
  display: flex;
  align-items: center;
  justify-content: center;
  background: rgba(209, 136, 0, 0.2);
  border-radius: 999px;
}

.hero-accent span {
  display: block;
  width: 1.8rem;
  height: 0.25rem;
  background: var(--accent);
  border-radius: 999px;
}

.intro {
  color: var(--text-muted);
  font-size: clamp(1.3rem, 1.4vw, 2rem);
  margin: 0 0 2.5rem;
}

.intro-highlight {
  color: var(--text);
}

h1 {
  font-size: clamp(3.8rem, 5vw, 8rem);
  line-height: 1.10;
  font-weight: 400;
  color: var(--text);
  margin: 0 0 2.5rem;
}

.highlight-word {
  color: var(--accent);
}

.subtitle {
  font-size: clamp(1.2rem, 1.6vw, 2.1rem);
  color: var(--text-muted);
  margin: 0 0 2rem;
}

.scroll-indicator {
  position: absolute;
  left: 50%;
  bottom: 5vh;
  transform: translateX(-50%);
  font-size: 3rem;
  color: var(--text-muted);
  line-height: 1;
  text-decoration: none;
  transition: color 0.2s ease;
}

.scroll-indicator:hover {
  color: white;
}
</style>