<template>
  <div class="not-found">
    <div class="content">
      <h1>404</h1>
      <h2>页面未找到</h2>
      <p>抱歉，您访问的页面不存在或已被移除。</p>
      <router-link to="/" class="btn-home">返回首页</router-link>
    </div>
  </div>
</template>

<style scoped>
.not-found {
  min-height: 60vh;
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  padding: 2rem;
}

.content h1 {
  font-size: 8rem;
  color: #0a9396;
  margin: 0;
  line-height: 1;
}

.content h2 {
  color: #1a1a2e;
  margin: 1rem 0;
}

.content p {
  color: #666;
  margin-bottom: 2rem;
}

.btn-home {
  display: inline-block;
  background: linear-gradient(135deg, #0a9396 0%, #005f73 100%);
  color: white;
  padding: 1rem 2rem;
  border-radius: 50px;
  text-decoration: none;
  font-weight: bold;
  transition: transform 0.3s, box-shadow 0.3s;
}

.btn-home:hover {
  transform: translateY(-2px);
  box-shadow: 0 10px 30px rgba(0,95,115,0.3);
}

@media (max-width: 768px) {
  .content h1 {
    font-size: 5rem;
  }
}
</style>