<template>
  <div class="products">
    <section class="page-header">
      <h1>产品中心</h1>
      <p>创新科技，精准医疗</p>
    </section>

    <section class="product-list">
      <div class="container">
        <div class="product-grid">
          <div class="product-card" v-for="product in products" :key="product.id">
            <div class="product-image">{{ product.icon }}</div>
            <div class="product-info">
              <h3>{{ product.name }}</h3>
              <p>{{ product.description }}</p>
              <router-link :to="`/contact`" class="btn-secondary">了解更多</router-link>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
const products = [
  {
    id: 1,
    name: '影像诊断设备',
    icon: '🖼️',
    description: '高精度医学影像设备，提供清晰的诊断图像'
  },
  {
    id: 2,
    name: '生命监测系统',
    icon: '💓',
    description: '实时监测患者生命体征，保障手术安全'
  },
  {
    id: 3,
    name: '体外诊断试剂',
    icon: '🔬',
    description: '快速准确的体外诊断解决方案'
  },
  {
    id: 4,
    name: '康复治疗设备',
    icon: '🦾',
    description: '专业康复训练设备，帮助患者恢复功能'
  },
  {
    id: 5,
    name: '智能手术机器人',
    icon: '🤖',
    description: '高精度微创手术辅助系统'
  },
  {
    id: 6,
    name: '医疗信息化平台',
    icon: '💻',
    description: '智慧医疗数据管理解决方案'
  }
]
</script>

<style scoped>
.page-header {
  background: linear-gradient(135deg, #0a9396 0%, #005f73 100%);
  color: white;
  padding: 4rem 2rem;
  text-align: center;
}

.page-header h1 {
  font-size: 2.5rem;
  margin-bottom: 0.5rem;
}

.product-list {
  padding: 4rem 2rem;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
}

.product-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
  gap: 2rem;
}

.product-card {
  background: white;
  border-radius: 12px;
  overflow: hidden;
  box-shadow: 0 4px 20px rgba(0,0,0,0.08);
  transition: transform 0.3s, box-shadow 0.3s;
}

.product-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 40px rgba(0,0,0,0.12);
}

.product-image {
  height: 200px;
  background: linear-gradient(135deg, #e9ecef 0%, #dee2e6 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 5rem;
}

.product-info {
  padding: 1.5rem;
}

.product-info h3 {
  color: #1a1a2e;
  margin-bottom: 0.5rem;
}

.product-info p {
  color: #666;
  margin-bottom: 1rem;
}

.btn-secondary {
  display: inline-block;
  color: #0a9396;
  text-decoration: none;
  font-weight: 600;
}

.btn-secondary:hover {
  text-decoration: underline;
}
</style>
