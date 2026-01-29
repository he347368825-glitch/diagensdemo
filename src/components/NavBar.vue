<template>
  <nav class="navbar">
    <div class="container">
      <router-link to="/" class="logo">
        <span class="logo-icon">🏥</span>
        <span class="logo-text">Diagens</span>
      </router-link>
      <button class="mobile-menu-btn" @click="toggleMenu" :class="{ active: menuOpen }">
        <span></span>
        <span></span>
        <span></span>
      </button>
      <ul class="nav-links" :class="{ open: menuOpen }">
        <li><router-link to="/" @click="closeMenu">首页</router-link></li>
        <li><router-link to="/products" @click="closeMenu">产品中心</router-link></li>
        <li><router-link to="/about" @click="closeMenu">关于我们</router-link></li>
        <li><router-link to="/contact" @click="closeMenu">联系我们</router-link></li>
      </ul>
    </div>
  </nav>
</template>

<script setup>
import { ref } from 'vue'

const menuOpen = ref(false)

const toggleMenu = () => {
  menuOpen.value = !menuOpen.value
}

const closeMenu = () => {
  menuOpen.value = false
}
</script>

<style scoped>
.navbar {
  background: linear-gradient(135deg, #0a9396 0%, #005f73 100%);
  padding: 1rem 0;
  position: sticky;
  top: 0;
  z-index: 100;
  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 2rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.logo {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  color: white;
  font-size: 1.5rem;
  font-weight: bold;
  text-decoration: none;
}

.nav-links {
  display: flex;
  list-style: none;
  gap: 2rem;
  margin: 0;
  padding: 0;
}

.nav-links a {
  color: white;
  text-decoration: none;
  font-weight: 500;
  transition: opacity 0.3s;
  position: relative;
}

.nav-links a::after {
  content: '';
  position: absolute;
  bottom: -5px;
  left: 0;
  width: 0;
  height: 2px;
  background: white;
  transition: width 0.3s;
}

.nav-links a:hover::after {
  width: 100%;
}

.nav-links a.router-link-active::after {
  width: 100%;
}

.mobile-menu-btn {
  display: none;
  flex-direction: column;
  gap: 5px;
  background: none;
  border: none;
  cursor: pointer;
  padding: 5px;
}

.mobile-menu-btn span {
  width: 25px;
  height: 3px;
  background: white;
  border-radius: 2px;
  transition: all 0.3s;
}

.mobile-menu-btn.active span:nth-child(1) {
  transform: rotate(45deg) translate(5px, 5px);
}

.mobile-menu-btn.active span:nth-child(2) {
  opacity: 0;
}

.mobile-menu-btn.active span:nth-child(3) {
  transform: rotate(-45deg) translate(6px, -6px);
}

@media (max-width: 768px) {
  .mobile-menu-btn {
    display: flex;
  }
  
  .nav-links {
    position: absolute;
    top: 100%;
    left: 0;
    right: 0;
    background: linear-gradient(135deg, #0a9396 0%, #005f73 100%);
    flex-direction: column;
    padding: 1rem 2rem;
    gap: 1rem;
    display: none;
    box-shadow: 0 10px 20px rgba(0,0,0,0.1);
  }
  
  .nav-links.open {
    display: flex;
  }
}
</style>
