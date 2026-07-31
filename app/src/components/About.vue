<script setup>
</script>

<template>
  <section class="about" id="about">
    <div class="about-grid">
      <div class="left-column">
        <article class="info-card">
          <h2>About</h2>
          <p>
            I’m a passionate cloud and DevOps-focused engineer with a strong interest
            in building resilient systems, automating workflows, and creating
            scalable infrastructure solutions.
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

      <article class="info-card experience">
        <div class="experience-header">
          <h2>Experience</h2>
          <a
            class="linkedin-link"
            href="https://ca.linkedin.com/in/brian-bargholz"
            target="_blank"
            rel="noopener noreferrer"
            aria-label="LinkedIn profile"
          >
            <svg viewBox="0 0 24 24" aria-hidden="true">
              <rect x="3" y="3" width="18" height="18" rx="2"/>
              <path d="M8.2 9.8h2.8v8.2H8.2V9.8Zm1.4-4.1a1.6 1.6 0 1 1 0 3.2 1.6 1.6 0 0 1 0-3.2ZM13.2 9.8h2.7v1.12h.04c.38-.72 1.3-1.48 2.68-1.48 2.87 0 3.4 1.88 3.4 4.33V18h-2.8v-16.3z" fill="currentColor"/>
            </svg>
          </a>
        </div>

        <div class="timeline">
          <div class="timeline-item">
            <div class="timeline-dot"></div>
            <div class="timeline-content">
              <span class="timeline-date">2024 — Present</span>
              <h3>Cloud & DevOps Engineer</h3>
              <p>
                Designing and automating scalable infrastructure, deployment
                pipelines, and Kubernetes-based systems to improve reliability
                and delivery speed.
              </p>
            </div>
          </div>

          <div class="timeline-item">
            <div class="timeline-dot"></div>
            <div class="timeline-content">
              <span class="timeline-date">2022 — 2024</span>
              <h3>Infrastructure Automation</h3>
              <p>
                Built CI/CD workflows and managed cloud resources with a focus on
                repeatability, observability, and reducing manual operational
                overhead.
              </p>
            </div>
          </div>
        </div>
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
  width: min(100%, 1100px);
  height: 100%;
  margin: 0 auto;
  display: grid;
  grid-template-columns: 1fr 1.2fr;
  gap: 1.25rem;
  align-items: center;
}

.left-column {
  display: grid;
  grid-template-rows: 1fr 1fr;
  gap: 1.25rem;
  height: 100%;
  align-items: center;
}

.info-card {
  background: transparent;
  border: none;
  border-radius: 0;
  padding: 2rem 1.5rem;
  box-sizing: border-box;
  display: flex;
  flex-direction: column;
  justify-content: center;
  width: 100%;
}

.experience-header {
  display: flex;
  align-items: center;
  gap: 0.7rem;
  margin-bottom: 0.9rem;
}

.info-card h2 {
  margin: 0;
  font-size: clamp(1.45rem, 1.8vw, 2.2rem);
  line-height: 1.3;
  font-weight: 600;
  letter-spacing: 0.02em;
  color: var(--text);
}

.linkedin-link {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 1.6rem;
  height: 1.6rem;
  color: var(--accent);
  text-decoration: none;
  transition: opacity 0.2s ease, transform 0.2s ease;
}

.linkedin-link:hover {
  opacity: 0.9;
  transform: translateY(-1px);
}

.linkedin-link svg {
  width: 1rem;
  height: 1rem;
  display: block;
}

.linkedin-link rect {
  fill: var(--accent);
}

.linkedin-link path {
  fill: #1b4332;
}

.info-card p {
  margin: 0;
  color: var(--text-muted);
  line-height: 1.6;
  font-size: clamp(0.95rem, 1.1vw, 1.15rem);
  font-weight: 400;
}

.experience {
  justify-content: center;
  min-height: 100%;
}

.timeline {
  position: relative;
  margin-top: 0.75rem;
  display: flex;
  flex-direction: column;
  gap: 0.95rem;
  padding-left: 0;
}

.timeline::before {
  content: "";
  position: absolute;
  left: 8px;
  top: 0.5rem;
  bottom: 0.5rem;
  width: 2px;
  background: rgba(255, 255, 255, 0.25);
}

.timeline-item {
  position: relative;
  display: grid;
  grid-template-columns: 18px 1fr;
  gap: 0.75rem;
  align-items: flex-start;
}

.timeline-dot {
  position: relative;
  z-index: 1;
  width: 12px;
  height: 12px;
  margin-top: 0.7rem;
  margin-left: 3px;
  border-radius: 50%;
  background: var(--accent);
  border: 2px solid rgba(255, 255, 255, 0.25);
  box-shadow: 0 0 0 3px rgba(209, 136, 0, 0.15);
}

.timeline-content {
  padding: 0.25rem 0 0.15rem 0.25rem;
  border-left: none;
}

.timeline-date {
  display: inline-block;
  margin-bottom: 0.35rem;
  font-size: clamp(0.7rem, 0.8vw, 0.85rem);
  letter-spacing: 0.12em;
  text-transform: uppercase;
  font-weight: 700;
  color: var(--accent);
}

.timeline-content h3 {
  margin: 0 0 0.3rem;
  font-size: clamp(1.02rem, 1.15vw, 1.35rem);
  line-height: 1.3;
  font-weight: 600;
  letter-spacing: 0.01em;
  color: var(--text);
}

.timeline-content p {
  margin: 0;
  color: var(--text-muted);
  line-height: 1.55;
  font-size: clamp(0.9rem, 1vw, 1.05rem);
  font-weight: 400;
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

  .left-column {
    grid-template-rows: auto auto;
  }
}
</style>