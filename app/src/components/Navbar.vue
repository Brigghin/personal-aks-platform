<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

const navItems = ref([
  { label: 'About', id: 'hero' },
  { label: 'Projects', id: 'projects' },
  { label: 'Skills', id: 'skills' },
  { label: 'Contact', id: 'contact' }
])

const activeSection = ref('hero')

const updateActiveSection = () => {
  const sections = navItems.value.map(item => ({
    id: item.id,
    element: document.getElementById(item.id)
  }))

  for (let section of sections) {
    if (section.element) {
      const rect = section.element.getBoundingClientRect()
      if (rect.top <= 100 && rect.bottom > 100) {
        activeSection.value = section.id
        break
      }
    }
  }
}

onMounted(() => {
  window.addEventListener('scroll', updateActiveSection)
})

onUnmounted(() => {
  window.removeEventListener('scroll', updateActiveSection)
})
</script>

<template>
  <nav class="navbar">
    <div class="nav-container">
      <ul class="nav-menu">
        <li v-for="item in navItems" :key="item.id" class="nav-item">
          <a 
            :href="`#${item.id}`"
            :class="['nav-link', { active: activeSection === item.id }]"
          >
            {{ item.label }}
          </a>
        </li>
      </ul>
    </div>
  </nav>
</template>

<style scoped>
.navbar {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  background: white;
  box-shadow: 0 1px 5px rgba(0, 0, 0, 0.08);
  z-index: 1000;
}

.nav-container {
  max-width: 100%;
  margin: 0 auto;
  padding: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 50px;
}

.nav-menu {
  display: flex;
  list-style: none;
  gap: 4rem;
  margin: 0;
  padding: 0;
  height: 100%;
  align-items: center;
}

.nav-item {
  display: flex;
  height: 100%;
  align-items: center;
}

.nav-link {
  color: #333;
  text-decoration: none;
  font-weight: 500;
  font-size: 0.9rem;
  transition: all 0.3s ease;
  padding: 0.25rem 0;
  border-bottom: 2px solid transparent;
  display: flex;
  align-items: center;
  height: 100%;
}

.nav-link:hover {
  color: #667eea;
}

.nav-link.active {
  color: #667eea;
  border-bottom-color: #667eea;
}

@media (max-width: 768px) {
  .nav-container {
    height: 45px;
  }

  .nav-menu {
    gap: 2rem;
  }

  .nav-link {
    font-size: 0.8rem;
  }
}
</style>
