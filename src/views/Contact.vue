<template>
  <div class="contact-page">
    <section class="page-header">
      <h1>联系我们</h1>
      <p>期待与您合作</p>
    </section>

    <section class="contact-content">
      <div class="container">
        <div class="contact-grid">
          <div class="contact-info">
            <h2>联系我们</h2>
            <p>如果您对我们的产品或服务有任何疑问，欢迎随时与我们联系。</p>
            
            <div class="info-items">
              <div class="info-item">
                <span class="info-icon">📍</span>
                <div>
                  <h4>公司地址</h4>
                  <p>北京市朝阳区建国路88号<br>SOHO现代城A座2001室</p>
                </div>
              </div>
              <div class="info-item">
                <span class="info-icon">📞</span>
                <div>
                  <h4>联系电话</h4>
                  <p>总机：010-8888 8888<br>售后：010-8888 8889</p>
                </div>
              </div>
              <div class="info-item">
                <span class="info-icon">✉️</span>
                <div>
                  <h4>电子邮箱</h4>
                  <p>info@diagens.com<br>support@diagens.com</p>
                </div>
              </div>
              <div class="info-item">
                <span class="info-icon">🕐</span>
                <div>
                  <h4>工作时间</h4>
                  <p>周一至周五：9:00-18:00<br>周六：9:00-12:00</p>
                </div>
              </div>
            </div>
          </div>

          <div class="contact-form-wrapper">
            <h2>在线留言</h2>
            <form class="contact-form" @submit.prevent="submitForm">
              <div class="form-group">
                <label for="name">您的姓名</label>
                <input type="text" id="name" v-model="form.name" placeholder="请输入姓名" required>
              </div>
              <div class="form-group">
                <label for="email">电子邮箱</label>
                <input type="email" id="email" v-model="form.email" placeholder="请输入邮箱" required>
              </div>
              <div class="form-group">
                <label for="phone">联系电话</label>
                <input type="tel" id="phone" v-model="form.phone" placeholder="请输入电话">
              </div>
              <div class="form-group">
                <label for="subject">主题</label>
                <select id="subject" v-model="form.subject" required>
                  <option value="">请选择</option>
                  <option value="product">产品咨询</option>
                  <option value="cooperation">商务合作</option>
                  <option value="support">技术支持</option>
                  <option value="other">其他</option>
                </select>
              </div>
              <div class="form-group">
                <label for="message">留言内容</label>
                <textarea id="message" v-model="form.message" placeholder="请输入留言内容" rows="5" required></textarea>
              </div>
              <button type="submit" class="btn-submit">提交留言</button>
            </form>
          </div>
        </div>

        <div class="map-section">
          <h2>我们的位置</h2>
          <div class="map-placeholder">
            <span>🗺️</span>
            <p>地图展示区域</p>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
import { reactive } from 'vue'

const form = reactive({
  name: '',
  email: '',
  phone: '',
  subject: '',
  message: ''
})

const submitForm = () => {
  alert('感谢您的留言！我们会尽快与您联系。')
  form.name = ''
  form.email = ''
  form.phone = ''
  form.subject = ''
  form.message = ''
}
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

.contact-content {
  padding: 4rem 2rem;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
}

.contact-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4rem;
  margin-bottom: 4rem;
}

.contact-info h2, .contact-form-wrapper h2 {
  color: #005f73;
  font-size: 1.8rem;
  margin-bottom: 1.5rem;
}

.contact-info > p {
  color: #666;
  margin-bottom: 2rem;
  line-height: 1.8;
}

.info-items {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
}

.info-item {
  display: flex;
  gap: 1rem;
  align-items: flex-start;
}

.info-icon {
  font-size: 2rem;
  flex-shrink: 0;
}

.info-item h4 {
  color: #1a1a2e;
  margin-bottom: 0.3rem;
}

.info-item p {
  color: #666;
  line-height: 1.6;
}

.contact-form {
  background: #f8f9fa;
  padding: 2rem;
  border-radius: 12px;
}

.form-group {
  margin-bottom: 1.5rem;
}

.form-group label {
  display: block;
  color: #1a1a2e;
  margin-bottom: 0.5rem;
  font-weight: 500;
}

.form-group input,
.form-group select,
.form-group textarea {
  width: 100%;
  padding: 0.8rem 1rem;
  border: 1px solid #ddd;
  border-radius: 8px;
  font-size: 1rem;
  transition: border-color 0.3s;
}

.form-group input:focus,
.form-group select:focus,
.form-group textarea:focus {
  outline: none;
  border-color: #0a9396;
}

.btn-submit {
  width: 100%;
  padding: 1rem;
  background: linear-gradient(135deg, #0a9396 0%, #005f73 100%);
  color: white;
  border: none;
  border-radius: 8px;
  font-size: 1rem;
  font-weight: 600;
  cursor: pointer;
  transition: transform 0.3s, box-shadow 0.3s;
}

.btn-submit:hover {
  transform: translateY(-2px);
  box-shadow: 0 5px 20px rgba(0,95,115,0.3);
}

.map-section h2 {
  text-align: center;
  color: #005f73;
  margin-bottom: 2rem;
}

.map-placeholder {
  background: linear-gradient(135deg, #e9ecef 0%, #dee2e6 100%);
  padding: 4rem;
  border-radius: 12px;
  text-align: center;
}

.map-placeholder span {
  font-size: 5rem;
}

.map-placeholder p {
  color: #666;
  margin-top: 1rem;
}

@media (max-width: 768px) {
  .contact-grid {
    grid-template-columns: 1fr;
    gap: 2rem;
  }
}
</style>
