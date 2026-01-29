<template>
  <div class="about-page">
    <section class="page-header">
      <h1>关于我们</h1>
      <p>科技创新，守护健康</p>
    </section>

    <section class="about-content">
      <div class="container">
        <div class="about-section">
          <div class="about-text">
            <h2>公司简介</h2>
            <p>Diagens 是一家专注于高端医疗器械研发、生产和销售的高科技企业。自成立以来，我们始终秉承"科技创新，守护健康"的理念，致力于为全球医疗机构提供最先进的医疗解决方案。</p>
            <p>我们拥有一支由资深医学专家、工程师和研究人员组成的精英团队，在医学影像、体外诊断、智能手术等领域取得了多项突破性成果。</p>
          </div>
          <div class="about-image">
            <span class="image-placeholder">🏢</span>
          </div>
        </div>

        <div class="about-section reverse">
          <div class="about-text">
            <h2>发展历程</h2>
            <ul class="timeline">
              <li>
                <span class="year">2005</span>
                <span class="event">公司成立，开始研发第一代医学影像设备</span>
              </li>
              <li>
                <span class="year">2010</span>
                <span class="event">获得国际医疗器械认证，产品出口欧洲</span>
              </li>
              <li>
                <span class="year">2015</span>
                <span class="event">研发智能手术机器人系统</span>
              </li>
              <li>
                <span class="year">2020</span>
                <span class="event">全球合作医院突破1000家</span>
              </li>
              <li>
                <span class="year">2024</span>
                <span class="event">推出新一代AI辅助诊断系统</span>
              </li>
            </ul>
          </div>
          <div class="about-image">
            <span class="image-placeholder">📈</span>
          </div>
        </div>

        <div class="team-section">
          <h2>核心团队</h2>
          <div class="team-grid">
            <div class="team-card">
              <span class="team-avatar">👨‍⚕️</span>
              <h3>张明博士</h3>
              <p>CEO & 创始人</p>
              <span class="team-desc">20年医疗器械行业经验</span>
            </div>
            <div class="team-card">
              <span class="team-avatar">👩‍🔬</span>
              <h3>李华博士</h3>
              <p>CTO</p>
              <span class="team-desc">AI医疗影像专家</span>
            </div>
            <div class="team-card">
              <span class="team-avatar">👨‍💼</span>
              <h3>王强</h3>
              <p>COO</p>
              <span class="team-desc">全球运营管理专家</span>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
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

.about-content {
  padding: 4rem 2rem;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
}

.about-section {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4rem;
  align-items: center;
  margin-bottom: 4rem;
}

.about-section.reverse {
  direction: rtl;
}

.about-section.reverse .about-text {
  direction: ltr;
}

.about-text h2 {
  color: #005f73;
  font-size: 2rem;
  margin-bottom: 1.5rem;
}

.about-text p {
  color: #666;
  line-height: 1.8;
  margin-bottom: 1rem;
}

.about-image {
  display: flex;
  align-items: center;
  justify-content: center;
}

.image-placeholder {
  font-size: 8rem;
  background: linear-gradient(135deg, #e9ecef 0%, #dee2e6 100%);
  padding: 3rem;
  border-radius: 20px;
}

.timeline {
  list-style: none;
  padding: 0;
}

.timeline li {
  display: flex;
  gap: 1rem;
  margin-bottom: 1rem;
  padding: 1rem;
  background: #f8f9fa;
  border-radius: 8px;
}

.timeline .year {
  font-weight: bold;
  color: #0a9396;
  min-width: 60px;
}

.team-section h2 {
  text-align: center;
  color: #005f73;
  font-size: 2rem;
  margin-bottom: 2rem;
}

.team-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 2rem;
}

.team-card {
  text-align: center;
  padding: 2rem;
  background: white;
  border-radius: 12px;
  box-shadow: 0 4px 20px rgba(0,0,0,0.08);
}

.team-avatar {
  font-size: 4rem;
  display: block;
  margin-bottom: 1rem;
}

.team-card h3 {
  color: #1a1a2e;
  margin-bottom: 0.5rem;
}

.team-card p {
  color: #0a9396;
  margin-bottom: 0.5rem;
}

.team-desc {
  font-size: 0.85rem;
  color: #999;
}

@media (max-width: 768px) {
  .about-section {
    grid-template-columns: 1fr;
    gap: 2rem;
  }
  .about-section.reverse {
    direction: ltr;
  }
}
</style>
