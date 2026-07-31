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
  width: 100%;
  height: 100vh;
  padding: 1.25rem 1.5rem;
  box-sizing: border-box;
}

.about-grid {
  width: 100%;
  height: 100%;
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 1.25rem;
}

.info-card {
  height: 100%;
  padding: 2.5rem 2rem;
  box-sizing: border-box;
  background: rgba(255, 255, 255, 0.02);
  border: 1px solid rgba(255, 255, 255, 0.08);
  border-radius: 14px;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.info-card h2 {
  margin: 0 0 1rem;
  font-size: 1.6rem;
  color: var(--text);
}

.info-card p {
  margin: 0;
  color: var(--text-muted);
  line-height: 1.7;
}

@media (max-width: 700px) {
  .about {
    height: auto;
    padding: 1rem;
  }

  .about-grid {
    grid-template-columns: 1fr;
    height: auto;
  }

  .info-card {
    height: auto;
    padding: 2.5rem 1.5rem;
  }
}
</style>