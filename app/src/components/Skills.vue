<script setup>
import { ref } from 'vue'

const skills = ref([
  {
    category: 'Frontend',
    color: 'skill-blue',
    items: ['Vue.js', 'React', 'TypeScript', 'Tailwind CSS', 'Vite']
  },
  {
    category: 'Backend',
    color: 'skill-purple',
    items: ['Node.js', 'Express', 'Python', 'SQL', 'REST APIs']
  },
  {
    category: 'Cloud & DevOps',
    color: 'skill-pink',
    items: ['Kubernetes', 'Docker', 'Azure', 'AWS', 'Terraform', 'CI/CD']
  },
  {
    category: 'Tools & Methods',
    color: 'skill-orange',
    items: ['Git', 'GitHub', 'VS Code', 'Agile', 'System Design']
  }
])
</script>

<template>
  <section id="skills" class="skills">
    <div class="inner-wrapper">
      <div class="section-header">
        <h2>Skills & Technologies</h2>
        <p>Expertise across the modern tech stack</p>
      </div>
      
      <div class="skills-grid">
        <div 
          v-for="skillGroup in skills" 
          :key="skillGroup.category"
          :class="['skill-group', skillGroup.color]"
        >
          <h3>{{ skillGroup.category }}</h3>
          <div class="skill-items">
            <span v-for="skill in skillGroup.items" :key="skill" class="skill-badge">
              {{ skill }}
            </span>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.skills {
  background: linear-gradient(180deg, #fff5f9 0%, #f0f4ff 100%);
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

.skills-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 2rem;
}

.skill-group {
  padding: 2.5rem;
  border-radius: 20px;
  color: white;
  transition: all 0.3s ease;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
  position: relative;
  overflow: hidden;
}

.skill-group::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: radial-gradient(circle at top right, rgba(255, 255, 255, 0.1) 0%, transparent 60%);
  z-index: 0;
}

.skill-group:hover {
  transform: translateY(-8px);
  box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
}

.skill-group h3 {
  position: relative;
  z-index: 1;
  font-size: 1.5rem;
  font-weight: 700;
  margin-bottom: 1.5rem;
}

.skill-blue {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}

.skill-purple {
  background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
}

.skill-pink {
  background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);
}

.skill-orange {
  background: linear-gradient(135deg, #fa709a 0%, #fee140 100%);
}

.skill-items {
  position: relative;
  z-index: 1;
  display: flex;
  flex-wrap: wrap;
  gap: 0.8rem;
}

.skill-badge {
  display: inline-block;
  padding: 0.6rem 1.2rem;
  background: rgba(255, 255, 255, 0.2);
  border-radius: 30px;
  font-size: 0.95rem;
  font-weight: 600;
  border: 1.5px solid rgba(255, 255, 255, 0.3);
  transition: all 0.3s ease;
  cursor: default;
}

.skill-badge:hover {
  background: rgba(255, 255, 255, 0.3);
  border-color: white;
  transform: scale(1.05);
}

@media (max-width: 768px) {
  .skills {
    padding: 3rem 1rem;
  }
  
  .section-header h2 {
    font-size: 2rem;
  }
  
  .skills-grid {
    grid-template-columns: 1fr;
  }
}
</style>
