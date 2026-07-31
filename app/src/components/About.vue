<script setup>
</script>

<template>
  <section class="about" id="about">
    <div class="about-grid">
      <article class="info-card">
        <h2>About</h2>
        <p>
          I’m a passionate cloud and DevOps-focused engineer with a strong interest
          in building resilient systems, automating workflows, and creating
          scalable infrastructure solutions.
        </p>
      </article>

      <article class="info-card">
        <h2>Experience</h2>
        <p>
          I work across infrastructure, automation, and deployment pipelines,
          helping teams improve reliability, reduce manual effort, and deliver
          faster, more consistent software releases.
        </p>
      </article>

      <article class="info-card">
        <h2>Education</h2>
        <p>
          My background is rooted in technology and problem-solving, with a focus
          on modern cloud practices, systems design, and engineering workflows.
        </p>
      </article>
    </div>
  </section>
</template>

<style scoped>
.about {
  padding: 6rem 2rem;
}

.about-grid {
  max-width: 1200px;
  margin: 0 auto;
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 2rem;
}

.info-card {
  background: rgba(255, 255, 255, 0.02);
  border: 1px solid rgba(255, 255, 255, 0.08);
  border-radius: 12px;
  padding: 2rem;
}

.info-card h2 {
  margin: 0 0 1rem;
  font-size: 1.5rem;
  color: var(--text);
}

.info-card p {
  margin: 0;
  color: var(--text-muted);
  line-height: 1.7;
}

@media (max-width: 700px) {
  .about-grid {
    grid-template-columns: 1fr;
  }
}
</style>