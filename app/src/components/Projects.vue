<script setup>
import { ref } from 'vue'

const projects = ref([
  {
    id: 1,
    title: 'AKS Platform',
    description: 'Personal Kubernetes platform on Azure with infrastructure as code',
    tags: ['Kubernetes', 'Azure', 'DevOps', 'Terraform'],
    color: 'gradient-cyan',
    link: '#'
  },
  {
    id: 2,
    title: 'Vue Portfolio',
    description: 'Modern, colorful portfolio website built with Vue 3 and Vite',
    tags: ['Vue.js', 'Vite', 'Design'],
    color: 'gradient-pink',
    link: '#'
  },
  {
    id: 3,
    title: 'Cloud Architecture',
    description: 'Scalable microservices architecture on cloud infrastructure',
    tags: ['Cloud', 'Microservices', 'Architecture'],
    color: 'gradient-purple',
    link: '#'
  },
  {
    id: 4,
    title: 'Full-Stack App',
    description: 'End-to-end application with modern frontend and robust backend',
    tags: ['Full-Stack', 'Node.js', 'React/Vue'],
    color: 'gradient-orange',
    link: '#'
  }
])
</script>

<template>
  <section id="projects" class="projects">
    <div class="inner-wrapper">
      <div class="section-header">
        <h2>Featured Projects</h2>
        <p>Building innovative solutions with cutting-edge technology</p>
      </div>
      
      <div class="projects-grid">
        <div 
          v-for="project in projects" 
          :key="project.id"
          :class="['project-card', project.color]"
        >
          <div class="card-content">
            <h3>{{ project.title }}</h3>
            <p>{{ project.description }}</p>
            
            <div class="tags">
              <span v-for="tag in project.tags" :key="tag" class="tag">
                {{ tag }}
              </span>
            </div>
            
            <a href="#" class="project-link">
              View Project →
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.projects {
  background: linear-gradient(180deg, #f8f9ff 0%, #fff5f9 100%);
  width: 100vw;
  position: relative;
  left: 50%;
  right: 50%;
  margin-left: -50vw;
  margin-right: -50vw;
  padding: 0;
}

.inner-wrapper {
  padding: 6rem 4rem;
  max-width: 100%;
  margin: 0 auto;
}

.section-header {
  text-align: center;
  margin-bottom: 4rem;
}

.section-header h2 {
  font-size: 3rem;
  font-weight: 800;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  margin-bottom: 1rem;
}

.section-header p {
  font-size: 1.2rem;
  color: #666;
}

.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
}

.project-card {
  padding: 2rem;
  border-radius: 20px;
  cursor: pointer;
  transition: all 0.3s ease;
  border: none;
  position: relative;
  overflow: hidden;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
}

.project-card .card-content {
  position: relative;
  z-index: 1;
}

.project-card h3 {
  font-size: 1.5rem;
  font-weight: 700;
  margin-bottom: 0.5rem;
  color: white;
}

.project-card p {
  font-size: 1rem;
  color: rgba(255, 255, 255, 0.9);
  margin-bottom: 1.5rem;
  line-height: 1.6;
}

.project-card:hover {
  transform: translateY(-10px);
  box-shadow: 0 20px 50px rgba(0, 0, 0, 0.2);
}

.gradient-cyan {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}

.gradient-pink {
  background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
}

.gradient-purple {
  background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);
}

.gradient-orange {
  background: linear-gradient(135deg, #fa709a 0%, #fee140 100%);
}

.tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-bottom: 1.5rem;
}

.tag {
  display: inline-block;
  padding: 0.4rem 0.8rem;
  background: rgba(255, 255, 255, 0.2);
  border-radius: 20px;
  font-size: 0.85rem;
  font-weight: 600;
  color: white;
  border: 1px solid rgba(255, 255, 255, 0.3);
}

.project-link {
  display: inline-block;
  color: white;
  font-weight: 600;
  text-decoration: none;
  transition: all 0.3s ease;
  padding: 0.5rem 0;
  border-bottom: 2px solid rgba(255, 255, 255, 0.3);
}

.project-link:hover {
  border-bottom-color: white;
}

@media (max-width: 768px) {
  .projects {
    padding: 3rem 1rem;
  }
  
  .section-header h2 {
    font-size: 2rem;
  }
  
  .projects-grid {
    grid-template-columns: 1fr;
  }
}
</style>
