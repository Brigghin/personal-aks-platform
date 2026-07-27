<script setup>
</script>

<template>
  <section id="hero" class="hero">
    <div class="hero-content">
      <div class="content">
        <h1 class="title">Brian Bargholz</h1>
        <p class="subtitle">Full-stack Developer & Cloud Architect</p>
        <p class="description">Building beautiful, scalable applications with modern tech</p>
        <div class="cta-buttons">
          <a href="#projects" class="btn btn-primary">View My Work</a>
          <a href="#contact" class="btn btn-secondary">Get In Touch</a>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.hero {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 2rem 0;
  margin: 0;
  margin-top: 50px;
  width: 100vw;
  position: relative;
  left: 50%;
  right: 50%;
  margin-left: -50vw;
  margin-right: -50vw;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}

.hero-content {
  text-align: center;
  color: white;
}

@keyframes slideUp {
  from {
    opacity: 0;
    transform: translateY(40px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.content {
  position: relative;
  z-index: 1;
}

.title {
  font-size: 4rem;
  font-weight: 800;
  margin-bottom: 0.5rem;
  letter-spacing: -2px;
  animation: slideUp 0.8s ease-out;
}

.subtitle {
  font-size: 1.8rem;
  margin-bottom: 1rem;
  font-weight: 300;
  opacity: 0.9;
  animation: slideUp 0.8s ease-out 0.2s both;
}

.description {
  font-size: 1.1rem;
  margin-bottom: 2rem;
  opacity: 0.85;
  max-width: 500px;
  margin-left: auto;
  margin-right: auto;
  animation: slideUp 0.8s ease-out 0.4s both;
}

@keyframes slideUp {
  from {
    opacity: 0;
    transform: translateY(40px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.cta-buttons {
  display: flex;
  gap: 1rem;
  justify-content: center;
  flex-wrap: wrap;
  animation: slideUp 0.8s ease-out 0.6s both;
}

.btn {
  padding: 1rem 2.5rem;
  font-size: 1.1rem;
  font-weight: 600;
  border: none;
  border-radius: 50px;
  cursor: pointer;
  transition: all 0.3s ease;
  text-decoration: none;
  display: inline-block;
}

.btn-primary {
  background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
  color: white;
  box-shadow: 0 10px 30px rgba(245, 87, 108, 0.4);
}

.btn-primary:hover {
  transform: translateY(-3px);
  box-shadow: 0 15px 40px rgba(245, 87, 108, 0.6);
}

.btn-secondary {
  background: white;
  color: #667eea;
  box-shadow: 0 10px 30px rgba(255, 255, 255, 0.3);
}

.btn-secondary:hover {
  transform: translateY(-3px);
  box-shadow: 0 15px 40px rgba(255, 255, 255, 0.5);
  background: #f0f0f0;
}

@media (max-width: 768px) {
  .title {
    font-size: 2.5rem;
  }
  
  .subtitle {
    font-size: 1.3rem;
  }
  
  .cta-buttons {
    flex-direction: column;
    align-items: center;
  }
  
  .btn {
    width: 100%;
    max-width: 300px;
  }
}
</style>
