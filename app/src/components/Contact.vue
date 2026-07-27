<script setup>
import { ref } from 'vue'

const socialLinks = ref([
  { name: 'GitHub', url: 'https://github.com', icon: '👨‍💻' },
  { name: 'LinkedIn', url: 'https://linkedin.com', icon: '💼' },
  { name: 'Twitter', url: 'https://twitter.com', icon: '🐦' },
  { name: 'Email', url: 'mailto:brian@example.com', icon: '✉️' }
])

const formData = ref({
  name: '',
  email: '',
  message: ''
})

const submitted = ref(false)

const handleSubmit = () => {
  submitted.value = true
  setTimeout(() => {
    formData.value = { name: '', email: '', message: '' }
    submitted.value = false
  }, 2000)
}
</script>

<template>
  <section id="contact" class="contact">
    <div class="inner-wrapper">
      <div class="section-header">
        <h2>Let's Connect</h2>
        <p>Have a project in mind? Let's work together!</p>
      </div>
      
      <div class="contact-content">
        <div class="contact-form">
          <form @submit.prevent="handleSubmit">
            <div class="form-group">
              <input 
                v-model="formData.name"
                type="text" 
                placeholder="Your Name" 
                required
                class="form-input"
              />
            </div>
            
            <div class="form-group">
              <input 
                v-model="formData.email"
                type="email" 
                placeholder="Your Email" 
                required
                class="form-input"
              />
            </div>
            
            <div class="form-group">
              <textarea 
                v-model="formData.message"
                placeholder="Your Message" 
                rows="5"
                required
                class="form-input"
              ></textarea>
            </div>
            
            <button type="submit" class="submit-btn">
              {{ submitted ? '✓ Message Sent!' : 'Send Message' }}
            </button>
          </form>
        </div>
        
        <div class="contact-info">
          <div class="info-box">
            <h3>Quick Links</h3>
            <div class="social-links">
              <a 
                v-for="link in socialLinks" 
                :key="link.name"
                :href="link.url"
                :title="link.name"
                target="_blank"
                rel="noopener noreferrer"
                class="social-link"
              >
                <span class="icon">{{ link.icon }}</span>
                <span class="name">{{ link.name }}</span>
              </a>
            </div>
          </div>
          
          <div class="info-box">
            <h3>Get In Touch</h3>
            <p class="info-text">brian@example.com</p>
            <p class="info-text">Available for freelance work and full-time opportunities</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <footer class="footer">
    <div class="footer-inner">
      <p>&copy; 2026 Brian Bargholz. Built with Vue 3 & Vite.</p>
    </div>
  </footer>
</template>

<style scoped>
.contact {
  background: linear-gradient(180deg, #f0f4ff 0%, #fff5f9 100%);
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

.contact-content {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 3rem;
  align-items: start;
}

.contact-form {
  background: white;
  padding: 2.5rem;
  border-radius: 20px;
  box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
}

.form-group {
  margin-bottom: 1.5rem;
}

.form-input {
  width: 100%;
  padding: 1rem;
  border: 2px solid #e5e4e7;
  border-radius: 12px;
  font-size: 1rem;
  font-family: inherit;
  transition: all 0.3s ease;
}

.form-input:focus {
  outline: none;
  border-color: #667eea;
  box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
}

.form-input::placeholder {
  color: #999;
}

textarea.form-input {
  resize: vertical;
  min-height: 120px;
}

.submit-btn {
  width: 100%;
  padding: 1.2rem;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  border: none;
  border-radius: 12px;
  font-size: 1.1rem;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.3s ease;
  box-shadow: 0 10px 30px rgba(102, 126, 234, 0.3);
}

.submit-btn:hover {
  transform: translateY(-3px);
  box-shadow: 0 15px 40px rgba(102, 126, 234, 0.4);
}

.submit-btn:active {
  transform: translateY(-1px);
}

.contact-info {
  display: flex;
  flex-direction: column;
  gap: 2rem;
}

.info-box {
  background: white;
  padding: 2rem;
  border-radius: 20px;
  box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
}

.info-box h3 {
  font-size: 1.5rem;
  font-weight: 700;
  margin-bottom: 1.5rem;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.social-links {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 1rem;
}

.social-link {
  display: flex;
  align-items: center;
  gap: 0.8rem;
  padding: 1rem;
  background: linear-gradient(135deg, rgba(102, 126, 234, 0.1), rgba(118, 75, 162, 0.1));
  border-radius: 12px;
  text-decoration: none;
  color: #667eea;
  font-weight: 600;
  transition: all 0.3s ease;
  border: 2px solid transparent;
}

.social-link:hover {
  background: linear-gradient(135deg, rgba(102, 126, 234, 0.2), rgba(118, 75, 162, 0.2));
  border-color: #667eea;
  transform: translateX(4px);
}

.social-link .icon {
  font-size: 1.5rem;
}

.info-text {
  color: #666;
  font-size: 1rem;
  line-height: 1.6;
  margin-bottom: 0.5rem;
}

.footer {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  padding: 0;
  text-align: center;
  width: 100vw;
  position: relative;
  left: 50%;
  right: 50%;
  margin-left: -50vw;
  margin-right: -50vw;
}

.footer-inner {
  padding: 2rem 4rem;
}

.footer p {
  margin: 0;
  font-size: 0.95rem;
  opacity: 0.9;
}

@media (max-width: 768px) {
  .contact {
    padding: 3rem 1rem;
  }
  
  .section-header h2 {
    font-size: 2rem;
  }
  
  .contact-content {
    grid-template-columns: 1fr;
    gap: 2rem;
  }
  
  .social-links {
    grid-template-columns: 1fr;
  }
}
</style>
