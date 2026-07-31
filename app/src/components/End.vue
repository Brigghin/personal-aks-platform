<script setup>
</script>

<template>
  <footer class="end" id="end">
    <div class="end-content">
      <p class="thanks">Thanks for reading this far.</p>

      <a class="email-link" href="mailto:brianbargholz@gmail.com">
        brianbargholz@gmail.com
      </a>

      <div class="social-links">
        <a
          href="https://ca.linkedin.com/in/brian-bargholz"
          target="_blank"
          rel="noopener noreferrer"
        >
          LinkedIn
        </a>
        <a
          href="https://github.com/Brigghin"
          target="_blank"
          rel="noopener noreferrer"
        >
          GitHub
        </a>
      </div>
    </div>
  </footer>
</template>

<style scoped>
.end {
  width: 100%;
  padding: 3rem 1.5rem 5rem;
  box-sizing: border-box;
}

.end-content {
  max-width: 1100px;
  margin: 0 auto;
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  gap: 1rem;
}

.thanks {
  margin: 0;
  color: var(--text);
  font-size: clamp(1.4rem, 2.1vw, 2.2rem);
}

.email-link,
.social-links a {
  color: var(--accent);
  text-decoration: none;
  transition: opacity 0.2s ease;
}

.email-link {
  font-size: 1rem;
}

.social-links {
  display: flex;
  gap: 1.5rem;
  flex-wrap: wrap;
  justify-content: center;
}

.email-link:hover,
.social-links a:hover {
  opacity: 0.8;
}
</style>
