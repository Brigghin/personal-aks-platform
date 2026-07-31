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
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="50" height="50">
           <path fill="#0077B5" d="M100.28 448H7.4V148.9h92.88zm-46.44-340.7C24.3 107.3 0 82.9 0 53.6 0 24.3 24.3 0 53.84 0s53.84 24.3 53.84 53.6c0 29.3-24.3 53.7-53.84 53.7zM447.9 448h-92.68V302.4c0-34.7-12.4-58.4-43.4-58.4-23.7 0-37.8 15.9-44 31.3-2.3 5.6-2.8 13.4-2.8 21.3V448h-92.68s1.2-241.3 0-266.1h92.68v37.7c12.3-19 34.3-46 83.4-46 60.9 0 106.6 39.7 106.6 125.1V448z"/>
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
  width: 1.25rem;
  height: 1.25rem;
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
    margin-top: 1.25rem;
  }
}
</style>