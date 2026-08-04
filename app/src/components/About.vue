<script setup>
</script>

<template>
  <section class="about" id="about">
    <div class="about-grid">
      <div class="left-column">
        <article class="info-card">
          <h2>About</h2>
          <p>
            I’m a fresh graduate with a passion for cloud computing, DevOps, and infrastructure automation. I have 
            experience working with cloud platforms, containerization, and CI/CD pipelines. 
            I enjoy building scalable systems, optimizing workflows, and exploring new technologies to solve complex problems.
          </p>
        </article>

        <article class="info-card">
          <h2>Education</h2>
          <p>
            As of August 2027, I will have completed my Bachelor of Science in Computer Science 
            with a minor in psychology at the University of Victoria. I also have multiple certifications 
            including COMPTIA A+, Network+, and Microsoft AZ-900. I am always looking to expand my knowledge and 
            skills in the field of technology, and I am committed to continuous learning and professional development.
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
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="50" height="50">
              <path fill="currentColor" d="M100.28 448H7.4V148.9h92.88zm-46.44-340.7C24.3 107.3 0 82.9 0 53.6 0 24.3 24.3 0 53.84 0s53.84 24.3 53.84 53.6c0 29.3-24.3 53.7-53.84 53.7zM447.9 448h-92.68V302.4c0-34.7-12.4-58.4-43.4-58.4-23.7 0-37.8 15.9-44 31.3-2.3 5.6-2.8 13.4-2.8 21.3V448h-92.68s1.2-241.3 0-266.1h92.68v37.7c12.3-19 34.3-46 83.4-46 60.9 0 106.6 39.7 106.6 125.1V448z"/>
            </svg>
          </a>
        </div>

        <div class="timeline">
          <div class="timeline-item">
            <div class="timeline-dot"></div>
            <div class="timeline-content">
              <span class="timeline-date"> May 2026 — December 2026</span>
              <h3>Junior Infrastructure Specialist (Internship)</h3>
              <p>
                Supported enterprise cloud and infrastructure operations through automation, 
                system administration, endpoint management, and Azure-based solutions. 
                Worked on operational improvements, compliance reporting, and infrastructure 
                modernization projects while gaining hands-on experience with cloud platforms, 
                IaC, scripting, and DevOps practices in a large-scale financial services organization.
              </p>
            </div>
          </div>

          <div class="timeline-item">
            <div class="timeline-dot"></div>
            <div class="timeline-content">
              <span class="timeline-date">May 2025 — August 2025</span>
              <h3>IT Support Technician (Internship)</h3>
              <p>
                Supported enterprise IT infrastructure for the Department of National Defence through device deployment, 
                Windows administration, incident resolution, asset management, and 
                lifecycle operations. Developed practical experience in 
                infrastructure support, system provisioning, troubleshooting, 
                and IT service management while working within a large-scale, 
                security-conscious environment.
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
  width: 1.25rem;
  height: 1.25rem;
  display: block;
}

.linkedin-link rect {
  fill: var(--accent);
}

.linkedin-link path {
  fill: var(--accent);
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
  margin-left: 2px;
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

@media (max-width: 900px) {
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