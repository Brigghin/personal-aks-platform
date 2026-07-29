<script setup>
</script>

<template>
  <section class="home">
    <div class="container">
      <p class="intro">Hi, I'm Brian.</p>

      <h1>
        Infrastructure Specialist Co-op
        <br />
        & Developer
      </h1>

      <p class="description">
        I build cloud infrastructure, automation tools, and software projects
        while learning in public.
      </p>
    </div>
  </section>
</template>

<style scoped>
.home {
  min-height: 100vh;
  display: flex;
  align-items: center;
}

.container {
  max-width: 800px;
  margin: 0 auto;
  padding: 0 2rem;
}

.intro {
  color: var(--accent);
  font-size: 1rem;
  margin-bottom: 1rem;
}

h1 {
  font-size: 4rem;
  line-height: 1.1;
  font-weight: 600;
  margin-bottom: 2rem;
  color: var(--text);
}

.description {
  font-size: 1.2rem;
  line-height: 1.8;
  max-width: 650px;
  color: var(--text-muted);
}

@media (max-width: 768px) {
  h1 {
    font-size: 2.5rem;
  }

  .description {
    font-size: 1rem;
  }
}
</style>