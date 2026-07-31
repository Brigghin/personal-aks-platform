<script setup>
</script>

<template>
  <nav class="navbar">
    <div class="container">
      <div class="socials" aria-label="Social links">
        <a
          class="social-link"
          href="https://ca.linkedin.com/in/brian-bargholz"
          target="_blank"
          rel="noopener noreferrer"
          aria-label="LinkedIn"
        >
          <svg viewBox="0 0 24 24" aria-hidden="true">
            <rect x="3" y="3" width="18" height="18" rx="2"/>
            <path d="M8.2 9.8h2.8v8.2H8.2V9.8Zm1.4-4.1a1.6 1.6 0 1 1 0 3.2 1.6 1.6 0 0 1 0-3.2ZM13.2 9.8h2.7v1.12h.04c.38-.72 1.3-1.48 2.68-1.48 2.87 0 3.4 1.88 3.4 4.33V18h-2.8v-16.3z" fill="currentColor"/>
          </svg>
        </a>

        <a
          class="social-link"
          href="https://github.com/Brigghin"
          target="_blank"
          rel="noopener noreferrer"
          aria-label="GitHub"
        >
          <svg viewBox="0 0 24 24" aria-hidden="true">
            <path d="M12 2a10 10 0 0 0-3.16 19.49c.5.1.68-.22.68-.48v-1.7c-2.77.6-3.36-1.33-3.36-1.33-.45-1.14-1.1-1.45-1.1-1.45-.9-.62.07-.6.07-.6 1 .07 1.53 1.03 1.53 1.03.9 1.54 2.35 1.1 2.92.84.09-.65.35-1.1.63-1.35-2.21-.25-4.54-1.1-4.54-4.9 0-1.08.39-1.97 1.03-2.67-.1-.25-.45-1.28.1-2.66 0 0 .84-.27 2.75 1.02A9.57 9.57 0 0 1 12 6.84c.85 0 1.71.12 2.51.35 1.91-1.29 2.75-1.02 2.75-1.02.55 1.38.2 2.41.1 2.66.64.7 1.03 1.59 1.03 2.67 0 3.81-2.33 4.64-4.55 4.89.36.31.68.92.68 1.86v2.76c0 .27.18.59.69.49A10 10 0 0 0 12 2Z"/>
          </svg>
        </a>
      </div>

      <ul class="nav-links">
        <li><a href="#about">About</a></li>
        <li><a href="#projects">Projects</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>
    </div>
  </nav>
</template>

<style scoped>
.navbar {
  width: 100%;
  height: 72px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: transparent;
  box-sizing: border-box;
}

.container {
  width: 100%;
  max-width: 1100px;
  margin: 0 auto;
  padding: 0 2rem;
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
  box-sizing: border-box;
}

.socials {
  position: absolute;
  left: 2rem;
  display: flex;
  align-items: center;
  gap: 0.7rem;
}

.social-link {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 1.5rem;
  height: 1.5rem;
  color: var(--accent);
  text-decoration: none;
  transition: opacity 0.2s ease, transform 0.2s ease;
}

.social-link:hover {
  opacity: 0.9;
  transform: translateY(-1px);
}

.social-link svg {
  width: 1rem;
  height: 1rem;
  display: block;
}

.social-link rect {
  fill: var(--accent);
}

.social-link path {
  fill: currentColor;
}

.container {
  position: relative;
}

.nav-links {
  position: absolute;
  left: 50%;
  transform: translateX(-50%);

  display: flex;
  gap: 3rem;
  list-style: none;
  margin: 0;
  padding: 0;
}

.nav-links a {
  color: rgba(255, 255, 255, 0.69);
  text-decoration: none;
  font-size: 0.95rem;
  transition: color 0.2s ease;
}

.nav-links a:hover {
  color: white;
}

@media (max-width: 700px) {
  .socials {
    left: 50%;
    top: 100%;
    transform: translateX(-65%);
    position: absolute;
    margin-top: 0.75rem;
  }
}
</style>