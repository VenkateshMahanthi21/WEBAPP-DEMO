<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · redesigned</title>
  <!-- Google Font & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
  <style>
    /* ---------- reset & base ---------- */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    html { scroll-behavior: smooth; }
    body {
      font-family: 'Inter', sans-serif;
      background: #f5f7fc;
      color: #0b1a2e;
    }
    a { text-decoration: none; color: inherit; }
    button, input { font-family: inherit; }
    button { cursor: pointer; }
    img { width: 100%; display: block; }
    .container {
      width: 92%;
      max-width: 1280px;
      margin: 0 auto;
    }

    /* ---------- header (glass) ---------- */
    header {
      background: rgba(255, 255, 255, 0.7);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(255, 255, 255, 0.3);
      position: sticky;
      top: 0;
      z-index: 1000;
      transition: box-shadow 0.2s;
    }
    header.scrolled {
      box-shadow: 0 8px 24px rgba(0, 20, 50, 0.08);
    }
    .header {
      height: 72px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
    }
    .logo {
      font-size: 24px;
      font-weight: 700;
      letter-spacing: -0.4px;
      color: #0b1a2e;
    }
    .logo span { color: #2563eb; background: rgba(37, 99, 235, 0.1); padding: 0 6px; border-radius: 6px; }
    .nav {
      display: flex;
      gap: 32px;
      align-items: center;
    }
    .nav a {
      font-size: 14px;
      font-weight: 500;
      color: #2c3e50;
      transition: 0.2s;
      position: relative;
    }
    .nav a::after {
      content: '';
      position: absolute;
      left: 0;
      bottom: -4px;
      width: 0;
      height: 2px;
      background: #2563eb;
      transition: 0.3s;
    }
    .nav a:hover::after, .nav a.active::after { width: 100%; }
    .nav a:hover, .nav a.active { color: #2563eb; }

    .header-right {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .search {
      display: flex;
      align-items: center;
      background: #ffffff;
      border: 1px solid #e2e8f0;
      border-radius: 40px;
      overflow: hidden;
      padding: 0 4px 0 14px;
      transition: 0.2s;
      box-shadow: 0 2px 6px rgba(0,0,0,0.02);
    }
    .search:focus-within {
      border-color: #2563eb;
      box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.2);
    }
    .search input {
      padding: 10px 0;
      border: none;
      outline: none;
      background: transparent;
      width: 160px;
      font-size: 13px;
    }
    .search button {
      border: none;
      background: transparent;
      padding: 10px 12px;
      color: #64748b;
      transition: 0.2s;
    }
    .search button:hover { color: #2563eb; }

    .icon-button {
      position: relative;
      width: 40px;
      height: 40px;
      border: none;
      background: #fff;
      border-radius: 40px;
      color: #1e293b;
      font-size: 16px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.02);
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .icon-button:hover {
      background: #f1f5f9;
      color: #2563eb;
    }
    .cart-count {
      position: absolute;
      top: -2px;
      right: -2px;
      background: #2563eb;
      color: white;
      font-size: 10px;
      font-weight: 700;
      width: 18px;
      height: 18px;
      border-radius: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 2px solid white;
    }
    .mobile-menu-button {
      display: none;
      border: none;
      background: transparent;
      font-size: 22px;
      color: #0b1a2e;
    }

    /* ---------- hero (soft gradient) ---------- */
    .hero {
      margin-top: 28px;
      border-radius: 28px;
      background: linear-gradient(135deg, #0b1a2e 0%, #1a2f44 100%);
      color: white;
      min-height: 400px;
      display: flex;
      align-items: center;
      position: relative;
      overflow: hidden;
      box-shadow: 0 20px 40px -12px rgba(0,0,0,0.25);
    }
    .hero-content {
      width: 55%;
      padding: 56px 48px;
      position: relative;
      z-index: 2;
    }
    .hero h1 {
      font-size: 48px;
      line-height: 1.1;
      font-weight: 700;
      letter-spacing: -1px;
      margin-bottom: 18px;
    }
    .hero h1 span { color: #93bbfc; }
    .hero p {
      color: #d4dcec;
      max-width: 460px;
      line-height: 1.7;
      margin-bottom: 32px;
      font-size: 15px;
    }
    .hero-buttons { display: flex; gap: 14px; flex-wrap: wrap; }
    .btn {
      padding: 14px 28px;
      border-radius: 40px;
      border: none;
      font-size: 14px;
      font-weight: 600;
      transition: 0.25s;
      display: inline-flex;
      align-items: center;
      gap: 8px;
    }
    .btn-primary {
      background: #2563eb;
      color: white;
      box-shadow: 0 6px 14px rgba(37, 99, 235, 0.35);
    }
    .btn-primary:hover { background: #1d4ed8; transform: scale(1.02); }
    .btn-light {
      background: rgba(255,255,255,0.12);
      color: white;
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255,255,255,0.15);
    }
    .btn-light:hover { background: rgba(255,255,255,0.25); }
    .hero-image {
      position: absolute;
      right: 0;
      top: 0;
      width: 50%;
      height: 100%;
    }
    .hero-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      opacity: 0.25;
      mix-blend-mode: overlay;
    }

    /* ---------- sections ---------- */
    .section { padding: 64px 0; }
    .section-header {
      display: flex;
      justify-content: space-between;
      align-items: flex-end;
      margin-bottom: 28px;
      flex-wrap: wrap;
    }
    .section-title h2 {
      font-size: 28px;
      font-weight: 700;
      letter-spacing: -0.3px;
      color: #0b1a2e;
    }
    .section-title p {
      color: #64748b;
      font-size: 14px;
      margin-top: 4px;
    }
    .view-all {
      color: #2563eb;
      font-weight: 600;
      font-size: 14px;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: 0.2s;
    }
    .view-all:hover { gap: 10px; color: #1d4ed8; }

    /* ---------- categories (modern cards) ---------- */
    .categories {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }
    .category {
      background: white;
      border-radius: 20px;
      padding: 24px 12px;
      text-align: center;
      transition: 0.25s;
      border: 1px solid #eff2f6;
      box-shadow: 0 4px 10px rgba(0,0,0,0.02);
    }
    .category:hover {
      transform: translateY(-6px);
      border-color: #2563eb;
      box-shadow: 0 16px 30px -12px rgba(37,99,235,0.15);
    }
    .category-icon {
      width: 56px;
      height: 56px;
      margin: 0 auto 14px;
      background: #eef4ff;
      color: #2563eb;
      border-radius: 18px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 22px;
    }
    .category h3 { font-size: 14px; font-weight: 600; margin-bottom: 4px; }
    .category p { font-size: 12px; color: #94a3b8; }

    /* ---------- products (elegant grid) ---------- */
    .products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 22px;
    }
    .product {
      background: white;
      border-radius: 24px;
      overflow: hidden;
      transition: 0.3s;
      border: 1px solid #f0f3f8;
      box-shadow: 0 6px 14px rgba(0,0,0,0.02);
    }
    .product:hover {
      transform: translateY(-6px);
      box-shadow: 0 20px 40px -16px rgba(0,20,50,0.15);
      border-color: #dbe7f6;
    }
    .product-image {
      height: 220px;
      position: relative;
      background: #f8fafc;
      overflow: hidden;
    }
    .product-image img {
      height: 100%;
      object-fit: cover;
      transition: 0.4s;
    }
    .product:hover .product-image img { transform: scale(1.04); }
    .product-badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: #2563eb;
      color: white;
      font-size: 11px;
      font-weight: 600;
      padding: 4px 14px;
      border-radius: 40px;
      letter-spacing: 0.3px;
    }
    .product-badge.sale { background: #dc2626; }
    .wishlist {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 34px;
      height: 34px;
      border: none;
      background: rgba(255,255,255,0.8);
      backdrop-filter: blur(4px);
      border-radius: 40px;
      color: #475569;
      transition: 0.2s;
      font-size: 14px;
    }
    .wishlist:hover { color: #dc2626; background: white; }
    .product-info { padding: 18px 16px 20px; }
    .product-category {
      font-size: 11px;
      color: #94a3b8;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      margin-bottom: 6px;
    }
    .product-name {
      font-size: 16px;
      font-weight: 600;
      margin-bottom: 10px;
      min-height: 40px;
      line-height: 1.3;
    }
    .price {
      font-size: 20px;
      font-weight: 700;
      color: #0b1a2e;
    }
    .old-price {
      font-size: 13px;
      color: #94a3b8;
      text-decoration: line-through;
      margin-left: 8px;
      font-weight: 400;
    }
    .rating {
      margin-top: 10px;
      font-size: 13px;
      color: #f59e0b;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .rating span { color: #94a3b8; font-size: 12px; margin-left: 4px; }
    .add-cart {
      width: 100%;
      margin-top: 16px;
      padding: 12px;
      border: none;
      background: #0b1a2e;
      color: white;
      border-radius: 40px;
      font-size: 13px;
      font-weight: 600;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .add-cart:hover { background: #2563eb; }
    .add-cart.added { background: #16a34a; }

    /* ---------- deal (dual tone) ---------- */
    .deal {
      background: white;
      border-radius: 28px;
      overflow: hidden;
      display: grid;
      grid-template-columns: 42% 58%;
      border: 1px solid #edf2f7;
    }
    .deal-image { min-height: 300px; }
    .deal-image img { height: 100%; object-fit: cover; }
    .deal-content {
      padding: 44px 48px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-label {
      color: #dc2626;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 1px;
      margin-bottom: 10px;
    }
    .deal-content h2 { font-size: 32px; margin-bottom: 10px; }
    .deal-content p { color: #64748b; line-height: 1.6; margin-bottom: 16px; }
    .deal-price {
      font-size: 34px;
      font-weight: 700;
      margin-bottom: 4px;
    }
    .deal-old-price {
      font-size: 18px;
      color: #94a3b8;
      text-decoration: line-through;
      margin-left: 10px;
    }
    .stock { color: #64748b; font-size: 13px; margin-bottom: 20px; }
    .timer {
      display: flex;
      gap: 14px;
      margin-bottom: 28px;
    }
    .timer-box {
      background: #0b1a2e;
      color: white;
      padding: 12px 16px;
      min-width: 64px;
      text-align: center;
      border-radius: 16px;
    }
    .timer-number { font-size: 24px; font-weight: 700; line-height: 1; }
    .timer-label { font-size: 9px; color: #b3c7e0; text-transform: uppercase; margin-top: 4px; }

    /* ---------- reviews ---------- */
    .reviews {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 22px;
    }
    .review {
      background: white;
      border-radius: 24px;
      padding: 28px;
      border: 1px solid #edf2f7;
      transition: 0.2s;
    }
    .review:hover { border-color: #cbd9eb; }
    .review-stars { color: #f59e0b; margin-bottom: 14px; font-size: 15px; }
    .review-text {
      color: #334155;
      font-size: 14px;
      line-height: 1.7;
      margin-bottom: 20px;
    }
    .review-user {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .review-user img {
      width: 44px;
      height: 44px;
      border-radius: 40px;
      object-fit: cover;
    }
    .review-user strong { display: block; font-size: 14px; }
    .review-user span { font-size: 12px; color: #94a3b8; }

    /* ---------- newsletter (glass) ---------- */
    .newsletter {
      background: linear-gradient(145deg, #0b1a2e, #1e3349);
      color: white;
      padding: 48px 52px;
      border-radius: 32px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 30px;
      flex-wrap: wrap;
    }
    .newsletter h2 { font-size: 26px; font-weight: 700; }
    .newsletter p { color: #b9cce0; font-size: 14px; }
    .newsletter-form {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
    }
    .newsletter-form input {
      padding: 14px 20px;
      border: none;
      border-radius: 40px;
      width: 240px;
      outline: none;
      font-size: 14px;
    }
    .newsletter-message { font-size: 13px; margin-top: 8px; width: 100%; }

    /* ---------- footer ---------- */
    footer {
      background: white;
      border-top: 1px solid #edf2f7;
      padding: 48px 0 24px;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 40px;
      margin-bottom: 32px;
    }
    .footer-brand p {
      color: #64748b;
      font-size: 13px;
      max-width: 280px;
      margin-top: 8px;
      line-height: 1.6;
    }
    .footer-column h4 { font-size: 14px; margin-bottom: 16px; color: #0b1a2e; }
    .footer-column a {
      display: block;
      color: #64748b;
      font-size: 13px;
      margin-bottom: 8px;
      transition: 0.2s;
    }
    .footer-column a:hover { color: #2563eb; }
    .social {
      display: flex;
      gap: 10px;
      margin-top: 16px;
    }
    .social a {
      width: 36px;
      height: 36px;
      border-radius: 40px;
      background: #f1f5f9;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #334155;
      transition: 0.2s;
    }
    .social a:hover { background: #2563eb; color: white; }
    .footer-bottom {
      border-top: 1px solid #edf2f7;
      padding-top: 20px;
      text-align: center;
      color: #94a3b8;
      font-size: 12px;
    }

    /* ---------- responsive ---------- */
    @media (max-width: 1024px) {
      .categories { grid-template-columns: repeat(3, 1fr); }
      .products { grid-template-columns: repeat(2, 1fr); }
    }
    @media (max-width: 900px) {
      .nav { display: none; }
      .mobile-menu-button { display: block; }
      .search input { width: 120px; }
      .hero-content { width: 70%; padding: 40px; }
      .hero h1 { font-size: 36px; }
      .hero-image { width: 60%; }
      .deal { grid-template-columns: 1fr; }
      .deal-image { height: 240px; }
      .reviews { grid-template-columns: 1fr; }
      .newsletter { flex-direction: column; align-items: flex-start; }
      .footer-grid { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 600px) {
      .container { width: 94%; }
      .header { height: 64px; }
      .logo { font-size: 20px; }
      .search { display: none; }
      .hero { margin-top: 14px; min-height: 320px; border-radius: 20px; }
      .hero-content { width: 100%; padding: 28px 24px; }
      .hero-image { width: 100%; }
      .hero-image img { opacity: 0.2; }
      .hero h1 { font-size: 28px; }
      .section { padding: 40px 0; }
      .categories { grid-template-columns: repeat(2, 1fr); gap: 10px; }
      .products { grid-template-columns: 1fr 1fr; gap: 12px; }
      .product-image { height: 160px; }
      .product-info { padding: 12px; }
      .product-name { font-size: 13px; min-height: 32px; }
      .price { font-size: 16px; }
      .deal-content { padding: 28px 24px; }
      .deal-content h2 { font-size: 24px; }
      .newsletter { padding: 28px 20px; }
      .newsletter-form input { width: 100%; }
      .footer-grid { grid-template-columns: 1fr; gap: 24px; }
      .timer-box { min-width: 52px; padding: 10px; }
      .timer-number { font-size: 18px; }
    }
  </style>
</head>
<body>

<!-- HEADER -->
<header id="header">
  <div class="container header">
    <button class="mobile-menu-button" id="mobileMenuButton"><i class="fas fa-bars"></i></button>
    <a href="#" class="logo">Nexus<span>Shop</span></a>
    <nav class="nav" id="navMenu">
      <a href="#" class="active">Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Products</a>
      <a href="#deals">Deals</a>
      <a href="#reviews">Reviews</a>
    </nav>
    <div class="header-right">
      <div class="search">
        <input type="search" id="searchInput" placeholder="Search..." />
        <button id="searchButton"><i class="fas fa-search"></i></button>
      </div>
      <button class="icon-button"><i class="far fa-user"></i></button>
      <button class="icon-button"><i class="far fa-heart"></i></button>
      <button class="icon-button" id="cartButton">
        <i class="fas fa-shopping-cart"></i>
        <span class="cart-count" id="cartCount">0</span>
      </button>
    </div>
  </div>
</header>

<main>
  <!-- HERO -->
  <section class="container hero">
    <div class="hero-content">
      <h1>Everything you need. <br /><span>All in one place.</span></h1>
      <p>Discover quality electronics, fashion, accessories and everyday essentials at prices you'll love.</p>
      <div class="hero-buttons">
        <button class="btn btn-primary" id="shopButton"><i class="fas fa-store"></i> Shop Now</button>
        <button class="btn btn-light" id="dealButton"><i class="fas fa-tag"></i> View Deals</button>
      </div>
    </div>
    <div class="hero-image">
      <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1200&q=80" alt="Shopping" />
    </div>
  </section>

  <!-- CATEGORIES -->
  <section class="section" id="categories">
    <div class="container">
      <div class="section-header">
        <div class="section-title"><h2>Shop by Category</h2><p>Browse our most popular categories</p></div>
        <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories" id="categoriesContainer"></div>
    </div>
  </section>

  <!-- PRODUCTS -->
  <section class="section" id="products">
    <div class="container">
      <div class="section-header">
        <div class="section-title"><h2>Popular Products</h2><p>Customer favorites this week</p></div>
        <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products" id="productsContainer"></div>
    </div>
  </section>

  <!-- DEAL -->
  <section class="section" id="deals">
    <div class="container">
      <div class="section-header">
        <div class="section-title"><h2>Today's Deal</h2><p>Limited time offer</p></div>
      </div>
      <div class="deal">
        <div class="deal-image">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=80" alt="MacBook" />
        </div>
        <div class="deal-content">
          <div class="deal-label"><i class="fas fa-bolt"></i> Limited Offer</div>
          <h2>MacBook Air M2</h2>
          <p>Powerful performance in a thin and lightweight design. Perfect for work, study and everyday use.</p>
          <div class="deal-price">$999 <span class="deal-old-price">$1,199</span></div>
          <div class="stock"><i class="fas fa-clock"></i> Only 12 items left</div>
          <div class="timer">
            <div class="timer-box"><div class="timer-number" id="days">0</div><div class="timer-label">Days</div></div>
            <div class="timer-box"><div class="timer-number" id="hours">00</div><div class="timer-label">Hours</div></div>
            <div class="timer-box"><div class="timer-number" id="minutes">00</div><div class="timer-label">Minutes</div></div>
            <div class="timer-box"><div class="timer-number" id="seconds">00</div><div class="timer-label">Seconds</div></div>
          </div>
          <button class="btn btn-primary" id="dealCartButton"><i class="fas fa-cart-plus"></i> Add to Cart</button>
        </div>
      </div>
    </div>
  </section>

  <!-- REVIEWS -->
  <section class="section" id="reviews">
    <div class="container">
      <div class="section-header">
        <div class="section-title"><h2>Customer Reviews</h2><p>What our customers are saying</p></div>
      </div>
      <div class="reviews" id="reviewsContainer"></div>
    </div>
  </section>

  <!-- NEWSLETTER -->
  <section class="section">
    <div class="container newsletter">
      <div><h2>Stay Updated</h2><p>Subscribe for new products and special offers.</p></div>
      <form class="newsletter-form" id="newsletterForm">
        <input type="email" id="emailInput" placeholder="Enter your email" required />
        <button class="btn btn-primary" style="border-radius:40px;"><i class="fas fa-paper-plane"></i> Subscribe</button>
        <div class="newsletter-message" id="newsletterMessage"></div>
      </form>
    </div>
  </section>
</main>

<!-- FOOTER -->
<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="footer-brand">
        <div class="logo">Nexus<span>Shop</span></div>
        <p>A simple modern e-commerce website built for a smooth shopping experience.</p>
        <div class="social">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div class="footer-column"><h4>Company</h4><a href="#">About</a><a href="#">Careers</a><a href="#">Blog</a><a href="#">Contact</a></div>
      <div class="footer-column"><h4>Support</h4><a href="#">Help Center</a><a href="#">Shipping</a><a href="#">Returns</a><a href="#">FAQ</a></div>
      <div class="footer-column"><h4>Legal</h4><a href="#">Privacy Policy</a><a href="#">Terms</a><a href="#">Cookies</a></div>
    </div>
    <div class="footer-bottom">© <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<script>
  // ---------- DATA ----------
  const categories = [
    { name: "Smartphones", icon: "fa-mobile-screen", count: 24 },
    { name: "Laptops", icon: "fa-laptop", count: 18 },
    { name: "Clothing", icon: "fa-shirt", count: 42 },
    { name: "Headphones", icon: "fa-headphones", count: 31 },
    { name: "Footwear", icon: "fa-shoe-prints", count: 27 },
    { name: "Accessories", icon: "fa-watch", count: 39 }
  ];
  const products = [
    { id:1, name:"iPhone 14 Pro Max", category:"Smartphones", price:1099, oldPrice:1199, rating:5, reviews:128, badge:"New", image:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=80" },
    { id:2, name:"MacBook Pro 14", category:"Laptops", price:1999, rating:5, reviews:86, badge:"", image:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=80" },
    { id:3, name:"Apple Watch Series 8", category:"Accessories", price:349, oldPrice:399, rating:5, reviews:214, badge:"Sale", image:"https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=80" },
    { id:4, name:"Nike Air Max", category:"Footwear", price:150, rating:4, reviews:53, badge:"", image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80" },
    { id:5, name:"Sony A7 IV Camera", category:"Gadgets", price:2499, rating:5, reviews:42, badge:"New", image:"https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=80" },
    { id:6, name:"Premium Perfume", category:"Accessories", price:120, rating:5, reviews:189, badge:"", image:"https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=80" },
    { id:7, name:"Travel Backpack", category:"Accessories", price:79, oldPrice:99, rating:4, reviews:67, badge:"Sale", image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80" },
    { id:8, name:"Sony WH-1000XM5", category:"Headphones", price:399, rating:5, reviews:156, badge:"", image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80" }
  ];
  const reviews = [
    { name:"Ava Martin", role:"Verified Buyer", rating:5, text:"Fast shipping and excellent support. The product exceeded my expectations!", image:"https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80" },
    { name:"Michael Lee", role:"Frequent Shopper", rating:4, text:"Great selection and smooth checkout. Will definitely shop again.", image:"https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80" },
    { name:"Sophia Chen", role:"Designer", rating:5, text:"Love the quality and packaging. Everything arrived in perfect condition.", image:"https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80" }
  ];

  // ---------- CART ----------
  let cartCount = 0;
  const cartCountEl = document.getElementById("cartCount");
  function updateCart() { cartCountEl.textContent = cartCount; }

  //
