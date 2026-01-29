<template>
  <div class="home">
    <section class="hero">
      <div class="hero-content">
        <h1>创新医疗，守护健康</h1>
        <p>Diagens 致力于研发和生产高端医疗器械，为全球医疗机构提供领先的解决方案</p>
        <router-link to="/products" class="btn-primary">了解我们的产品</router-link>
      </div>
    </section>

    <section class="features">
      <div class="container">
        <h2>我们的优势</h2>
        <div class="feature-grid">
          <div class="feature-card">
            <span class="feature-icon">🔬</span>
            <h3>先进技术</h3>
            <p>采用国际领先的医疗技术，确保产品的高精度和高可靠性</p>
          </div>
          <div class="feature-card">
            <span class="feature-icon">🛡️</span>
            <h3>安全可靠</h3>
            <p>严格遵循国际医疗标准，所有产品均通过权威认证</p>
          </div>
          <div class="feature-card">
            <span class="feature-icon">🌍</span>
            <h3>全球服务</h3>
            <p>服务网络遍布全球，为客户提供及时专业的技术支持</p>
          </div>
        </div>
      </div>
    </section>

    <section class="stats">
      <div class="container">
        <div class="stats-grid">
          <div class="stat-item">
            <span class="stat-number">20+</span>
            <span class="stat-label">年行业经验</span>
          </div>
          <div class="stat-item">
            <span class="stat-number">100+</span>
            <span class="stat-label">产品专利</span>
          </div>
          <div class="stat-item">
            <span class="stat-number">50+</span>
            <span class="stat-label">国家覆盖</span>
          </div>
          <div class="stat-item">
            <span class="stat-number">1000+</span>
            <span class="stat-label">合作医院</span>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
</script>

<style scoped>
.hero {
  background: linear-gradient(135deg, #0a9396 0%, #005f73 100%);
  color: white;
  padding: 6rem 2rem;
  text-align: center;
}

.hero h1 {
  font-size: 3rem;
  margin-bottom: 1rem;
}

.hero p {
  font-size: 1.25rem;
  max-width: 600px;
  margin: 0 auto 2rem;
  opacity: 0.9;
}

.btn-primary {
  display: inline-block;
  background: white;
  color: #005f73;
  padding: 1rem 2rem;
  border-radius: 50px;
  text-decoration: none;
  font-weight: bold;
  transition: transform 0.3s, box-shadow 0.3s;
}

.btn-primary:hover {
  transform: translateY(-2px);
  box-shadow: 0 10px 30px rgba(0,0,0,0.2);
}

.features {
  padding: 4rem 2rem;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
}

.features h2 {
  text-align: center;
  font-size: 2rem;
  margin-bottom: 3rem;
  color: #1a1a2e;
}

.feature-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 2rem;
}

.feature-card {
  text-align: center;
  padding: 2rem;
  border-radius: 12px;
  background: white;
  box-shadow: 0 4px 20px rgba(0,0,0,0.08);
  transition: transform 0.3s;
}

.feature-card:hover {
  transform: translateY(-5px);
}

.feature-icon {
  font-size: 3rem;
  display: block;
  margin-bottom: 1rem;
}

.feature-card h3 {
  color: #005f73;
  margin-bottom: 0.5rem;
}

.stats {
  background: #f8f9fa;
  padding: 4rem 2rem;
}

.stats-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
  gap: 2rem;
  text-align: center;
}

.stat-item {
  padding: 1rem;
}

.stat-number {
  display: block;
  font-size: 3rem;
  font-weight: bold;
  color: #0a9396;
}

.stat-label {
  color: #666;
}

@media (max-width: 768px) {
  .hero h1 {
    font-size: 2rem;
  }
  .hero p {
    font-size: 1rem;
  }
}
</style>
