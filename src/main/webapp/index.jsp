<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop - Online Store</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "Inter", Arial, sans-serif;
            background: #f7f7f8;
            color: #222;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        button,
        input {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        img {
            width: 100%;
            display: block;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: auto;
        }


        /* =========================
           HEADER
        ========================= */

        header {
            background: #ffffff;
            border-bottom: 1px solid #e5e5e5;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .header {
            height: 70px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
        }

        .logo {
            font-size: 22px;
            font-weight: 700;
            color: #111;
        }

        .logo span {
            color: #2563eb;
        }

        .nav {
            display: flex;
            gap: 28px;
        }

        .nav a {
            font-size: 14px;
            color: #555;
            transition: 0.2s;
        }

        .nav a:hover,
        .nav a.active {
            color: #2563eb;
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .search {
            display: flex;
            align-items: center;
            background: #f3f4f6;
            border: 1px solid #e5e7eb;
            border-radius: 6px;
            overflow: hidden;
        }

        .search input {
            width: 180px;
            padding: 10px 12px;
            border: none;
            outline: none;
            background: transparent;
        }

        .search button {
            border: none;
            background: transparent;
            padding: 10px 12px;
            color: #555;
        }

        .icon-button {
            position: relative;
            width: 38px;
            height: 38px;
            border: none;
            background: transparent;
            color: #444;
            font-size: 16px;
        }

        .icon-button:hover {
            color: #2563eb;
        }

        .cart-count {
            position: absolute;
            top: 0;
            right: 0;
            background: #2563eb;
            color: white;
            font-size: 10px;
            width: 17px;
            height: 17px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .mobile-menu-button {
            display: none;
            border: none;
            background: transparent;
            font-size: 20px;
        }


        /* =========================
           HERO
        ========================= */

        .hero {
            background: #111827;
            color: white;
            margin-top: 25px;
            border-radius: 8px;
            min-height: 400px;
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
        }

        .hero-content {
            width: 55%;
            padding: 60px;
            position: relative;
            z-index: 2;
        }

        .hero h1 {
            font-size: 46px;
            line-height: 1.15;
            margin-bottom: 20px;
        }

        .hero p {
            color: #d1d5db;
            max-width: 500px;
            line-height: 1.7;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
        }

        .btn {
            padding: 12px 22px;
            border-radius: 5px;
            border: none;
            font-size: 14px;
            font-weight: 600;
        }

        .btn-primary {
            background: #2563eb;
            color: white;
        }

        .btn-primary:hover {
            background: #1d4ed8;
        }

        .btn-light {
            background: white;
            color: #111827;
        }

        .btn-light:hover {
            background: #f3f4f6;
        }

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
            opacity: 0.7;
        }


        /* =========================
           SECTIONS
        ========================= */

        .section {
            padding: 60px 0;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
        }

        .section-title h2 {
            font-size: 26px;
            margin-bottom: 5px;
        }

        .section-title p {
            color: #777;
            font-size: 14px;
        }

        .view-all {
            color: #2563eb;
            font-size: 14px;
            font-weight: 600;
        }


        /* =========================
           CATEGORIES
        ========================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 15px;
        }

        .category {
            background: white;
            border: 1px solid #e5e7eb;
            border-radius: 7px;
            padding: 25px 10px;
            text-align: center;
            transition: 0.2s;
        }

        .category:hover {
            border-color: #2563eb;
            transform: translateY(-2px);
        }

        .category-icon {
            width: 50px;
            height: 50px;
            margin: 0 auto 12px;
            background: #eff6ff;
            color: #2563eb;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 20px;
        }

        .category h3 {
            font-size: 14px;
            margin-bottom: 5px;
        }

        .category p {
            font-size: 12px;
            color: #888;
        }


        /* =========================
           PRODUCTS
        ========================= */

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 18px;
        }

        .product {
            background: white;
            border: 1px solid #e5e7eb;
            border-radius: 7px;
            overflow: hidden;
            transition: 0.2s;
        }

        .product:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(0,0,0,0.07);
        }

        .product-image {
            height: 230px;
            position: relative;
            background: #f3f4f6;
            overflow: hidden;
        }

        .product-image img {
            height: 100%;
            object-fit: cover;
            transition: 0.3s;
        }

        .product:hover .product-image img {
            transform: scale(1.03);
        }

        .product-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: #2563eb;
            color: white;
            font-size: 11px;
            padding: 5px 9px;
            border-radius: 4px;
        }

        .product-badge.sale {
            background: #dc2626;
        }

        .wishlist {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 32px;
            height: 32px;
            border: none;
            background: white;
            border-radius: 50%;
            color: #555;
        }

        .wishlist:hover {
            color: #dc2626;
        }

        .product-info {
            padding: 15px;
        }

        .product-category {
            font-size: 11px;
            color: #888;
            text-transform: uppercase;
            margin-bottom: 7px;
        }

        .product-name {
            font-size: 15px;
            font-weight: 600;
            margin-bottom: 10px;
            min-height: 38px;
        }

        .price {
            font-size: 18px;
            font-weight: 700;
        }

        .old-price {
            font-size: 13px;
            color: #999;
            text-decoration: line-through;
            margin-left: 7px;
        }

        .rating {
            margin-top: 8px;
            font-size: 12px;
            color: #f59e0b;
        }

        .rating span {
            color: #888;
        }

        .add-cart {
            width: 100%;
            margin-top: 14px;
            padding: 10px;
            border: none;
            background: #111827;
            color: white;
            border-radius: 5px;
            font-size: 13px;
            font-weight: 600;
        }

        .add-cart:hover {
            background: #2563eb;
        }

        .add-cart.added {
            background: #16a34a;
        }


        /* =========================
           DEAL
        ========================= */

        .deal {
            background: white;
            border: 1px solid #e5e7eb;
            border-radius: 8px;
            overflow: hidden;
            display: grid;
            grid-template-columns: 45% 55%;
        }

        .deal-image {
            min-height: 330px;
        }

        .deal-image img {
            height: 100%;
            object-fit: cover;
        }

        .deal-content {
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-label {
            color: #dc2626;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            margin-bottom: 12px;
        }

        .deal-content h2 {
            font-size: 30px;
            margin-bottom: 10px;
        }

        .deal-content p {
            color: #777;
            line-height: 1.6;
            margin-bottom: 15px;
        }

        .deal-price {
            font-size: 30px;
            font-weight: 700;
            margin-bottom: 5px;
        }

        .deal-old-price {
            font-size: 17px;
            color: #999;
            text-decoration: line-through;
            margin-left: 8px;
        }

        .stock {
            color: #777;
            font-size: 13px;
            margin-bottom: 20px;
        }

        .timer {
            display: flex;
            gap: 10px;
            margin-bottom: 25px;
        }

        .timer-box {
            background: #111827;
            color: white;
            padding: 10px 14px;
            min-width: 60px;
            text-align: center;
            border-radius: 5px;
        }

        .timer-number {
            font-size: 20px;
            font-weight: 700;
        }

        .timer-label {
            font-size: 9px;
            color: #bbb;
            text-transform: uppercase;
        }


        /* =========================
           REVIEWS
        ========================= */

        .reviews {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .review {
            background: white;
            border: 1px solid #e5e7eb;
            border-radius: 7px;
            padding: 25px;
        }

        .review-stars {
            color: #f59e0b;
            margin-bottom: 12px;
        }

        .review-text {
            color: #555;
            font-size: 14px;
            line-height: 1.7;
            margin-bottom: 18px;
        }

        .review-user {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .review-user img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
        }

        .review-user strong {
            display: block;
            font-size: 13px;
        }

        .review-user span {
            font-size: 11px;
            color: #888;
        }


        /* =========================
           NEWSLETTER
        ========================= */

        .newsletter {
            background: #111827;
            color: white;
            padding: 45px;
            border-radius: 8px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 30px;
        }

        .newsletter h2 {
            font-size: 25px;
            margin-bottom: 5px;
        }

        .newsletter p {
            color: #bbb;
            font-size: 14px;
        }

        .newsletter-form {
            display: flex;
            gap: 8px;
        }

        .newsletter-form input {
            width: 260px;
            padding: 12px 15px;
            border: none;
            border-radius: 5px;
            outline: none;
        }

        .newsletter-message {
            font-size: 12px;
            margin-top: 8px;
        }


        /* =========================
           FOOTER
        ========================= */

        footer {
            background: white;
            border-top: 1px solid #e5e7eb;
            padding: 45px 0 20px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 35px;
        }

        .footer-brand p {
            color: #777;
            font-size: 13px;
            max-width: 280px;
            margin-top: 10px;
            line-height: 1.6;
        }

        .footer-column h4 {
            font-size: 14px;
            margin-bottom: 15px;
        }

        .footer-column a {
            display: block;
            color: #777;
            font-size: 13px;
            margin-bottom: 8px;
        }

        .footer-column a:hover {
            color: #2563eb;
        }

        .social {
            display: flex;
            gap: 8px;
            margin-top: 15px;
        }

        .social a {
            width: 34px;
            height: 34px;
            border-radius: 50%;
            background: #f3f4f6;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .footer-bottom {
            border-top: 1px solid #eee;
            padding-top: 18px;
            text-align: center;
            color: #999;
            font-size: 12px;
        }


        /* =========================
           MOBILE
        ========================= */

        @media (max-width: 900px) {

            .nav {
                display: none;
            }

            .mobile-menu-button {
                display: block;
            }

            .header {
                gap: 10px;
            }

            .search input {
                width: 130px;
            }

            .hero-content {
                width: 70%;
                padding: 40px;
            }

            .hero h1 {
                font-size: 36px;
            }

            .hero-image {
                width: 60%;
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .deal {
                grid-template-columns: 1fr;
            }

            .deal-image {
                height: 250px;
                min-height: auto;
            }

            .reviews {
                grid-template-columns: 1fr;
            }

            .newsletter {
                flex-direction: column;
                align-items: flex-start;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }


        @media (max-width: 600px) {

            .container {
                width: 94%;
            }

            .header {
                height: 60px;
            }

            .logo {
                font-size: 19px;
            }

            .search {
                display: none;
            }

            .hero {
                margin-top: 12px;
                min-height: 360px;
            }

            .hero-content {
                width: 100%;
                padding: 30px 25px;
            }

            .hero-image {
                width: 100%;
            }

            .hero-image img {
                opacity: 0.25;
            }

            .hero h1 {
                font-size: 30px;
            }

            .hero p {
                font-size: 13px;
            }

            .section {
                padding: 40px 0;
            }

            .section-header {
                align-items: flex-start;
            }

            .section-title h2 {
                font-size: 22px;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .products {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }

            .product-image {
                height: 170px;
            }

            .product-info {
                padding: 11px;
            }

            .product-name {
                font-size: 13px;
            }

            .price {
                font-size: 15px;
            }

            .deal-content {
                padding: 30px 25px;
            }

            .deal-content h2 {
                font-size: 24px;
            }

            .newsletter {
                padding: 30px 22px;
            }

            .newsletter-form {
                width: 100%;
                flex-direction: column;
            }

            .newsletter-form input {
                width: 100%;
            }

            .footer-grid {
                grid-template-columns: 1fr;
                gap: 25px;
            }
        }

    </style>
</head>


<body>


<!-- =========================
     HEADER
========================= -->

<header>

    <div class="container header">

        <button class="mobile-menu-button" id="mobileMenuButton">
            <i class="fas fa-bars"></i>
        </button>

        <a href="#" class="logo">
            Nexus<span>Shop</span>
        </a>

        <nav class="nav">

            <a href="#" class="active">Home</a>

            <a href="#categories">Categories</a>

            <a href="#products">Products</a>

            <a href="#deals">Deals</a>

            <a href="#reviews">Reviews</a>

        </nav>

        <div class="header-right">

            <div class="search">

                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                >

                <button id="searchButton">
                    <i class="fas fa-search"></i>
                </button>

            </div>

            <button class="icon-button">
                <i class="far fa-user"></i>
            </button>

            <button class="icon-button">
                <i class="far fa-heart"></i>
            </button>

            <button class="icon-button" id="cartButton">

                <i class="fas fa-shopping-cart"></i>

                <span class="cart-count" id="cartCount">
                    0
                </span>

            </button>

        </div>

    </div>

</header>


<!-- =========================
     MAIN
========================= -->

<main>


    <!-- HERO -->

    <section class="container hero">

        <div class="hero-content">

            <h1>
                Everything you need.
                All in one place.
            </h1>

            <p>
                Discover quality electronics, fashion, accessories
                and everyday essentials at prices you'll love.
            </p>

            <div class="hero-buttons">

                <button class="btn btn-primary" id="shopButton">
                    Shop Now
                </button>

                <button class="btn btn-light" id="dealButton">
                    View Deals
                </button>

            </div>

        </div>

        <div class="hero-image">

            <img
                src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1200&q=80"
                alt="Shopping"
            >

        </div>

    </section>


    <!-- CATEGORIES -->

    <section class="section" id="categories">

        <div class="container">

            <div class="section-header">

                <div class="section-title">

                    <h2>Shop by Category</h2>

                    <p>
                        Browse our most popular categories
                    </p>

                </div>

                <a href="#" class="view-all">
                    View All
                </a>

            </div>


            <div class="categories" id="categoriesContainer"></div>

        </div>

    </section>


    <!-- PRODUCTS -->

    <section class="section" id="products">

        <div class="container">

            <div class="section-header">

                <div class="section-title">

                    <h2>Popular Products</h2>

                    <p>
                        Customer favorites this week
                    </p>

                </div>

                <a href="#" class="view-all">
                    View All
                </a>

            </div>


            <div class="products" id="productsContainer"></div>

        </div>

    </section>


    <!-- DEAL -->

    <section class="section" id="deals">

        <div class="container">

            <div class="section-header">

                <div class="section-title">

                    <h2>Today's Deal</h2>

                    <p>
                        Limited time offer
                    </p>

                </div>

            </div>


            <div class="deal">

                <div class="deal-image">

                    <img
                        src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=80"
                        alt="MacBook"
                    >

                </div>


                <div class="deal-content">

                    <div class="deal-label">
                        Limited Offer
                    </div>

                    <h2>
                        MacBook Air M2
                    </h2>

                    <p>
                        Powerful performance in a thin and lightweight
                        design. Perfect for work, study and everyday use.
                    </p>

                    <div class="deal-price">
                        $999

                        <span class="deal-old-price">
                            $1,199
                        </span>
                    </div>

                    <div class="stock">
                        Only 12 items left
                    </div>


                    <div class="timer">

                        <div class="timer-box">

                            <div class="timer-number" id="days">
                                0
                            </div>

                            <div class="timer-label">
                                Days
                            </div>

                        </div>


                        <div class="timer-box">

                            <div class="timer-number" id="hours">
                                00
                            </div>

                            <div class="timer-label">
                                Hours
                            </div>

                        </div>


                        <div class="timer-box">

                            <div class="timer-number" id="minutes">
                                00
                            </div>

                            <div class="timer-label">
                                Minutes
                            </div>

                        </div>


                        <div class="timer-box">

                            <div class="timer-number" id="seconds">
                                00
                            </div>

                            <div class="timer-label">
                                Seconds
                            </div>

                        </div>

                    </div>


                    <button class="btn btn-primary" id="dealCartButton">
                        <i class="fas fa-shopping-cart"></i>
                        Add to Cart
                    </button>

                </div>

            </div>

        </div>

    </section>


    <!-- REVIEWS -->

    <section class="section" id="reviews">

        <div class="container">

            <div class="section-header">

                <div class="section-title">

                    <h2>Customer Reviews</h2>

                    <p>
                        What our customers are saying
                    </p>

                </div>

            </div>


            <div class="reviews" id="reviewsContainer"></div>

        </div>

    </section>


    <!-- NEWSLETTER -->

    <section class="section">

        <div class="container">

            <div class="newsletter">

                <div>

                    <h2>
                        Stay Updated
                    </h2>

                    <p>
                        Subscribe for new products and special offers.
                    </p>

                </div>


                <form class="newsletter-form" id="newsletterForm">

                    <input
                        type="email"
                        id="emailInput"
                        placeholder="Enter your email"
                        required
                    >

                    <button class="btn btn-primary">
                        Subscribe
                    </button>

                </form>

                <div
                    class="newsletter-message"
                    id="newsletterMessage">
                </div>

            </div>

        </div>

    </section>

</main>


<!-- =========================
     FOOTER
========================= -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <div class="logo">
                    Nexus<span>Shop</span>
                </div>

                <p>
                    A simple modern e-commerce website built
                    for a smooth shopping experience.
                </p>

                <div class="social">

                    <a href="#">
                        <i class="fab fa-facebook-f"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-instagram"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-twitter"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-youtube"></i>
                    </a>

                </div>

            </div>


            <div class="footer-column">

                <h4>Company</h4>

                <a href="#">About</a>

                <a href="#">Careers</a>

                <a href="#">Blog</a>

                <a href="#">Contact</a>

            </div>


            <div class="footer-column">

                <h4>Support</h4>

                <a href="#">Help Center</a>

                <a href="#">Shipping</a>

                <a href="#">Returns</a>

                <a href="#">FAQ</a>

            </div>


            <div class="footer-column">

                <h4>Legal</h4>

                <a href="#">Privacy Policy</a>

                <a href="#">Terms</a>

                <a href="#">Cookies</a>

            </div>

        </div>


        <div class="footer-bottom">

            © <span id="year"></span> NexusShop.
            All rights reserved.

        </div>

    </div>

</footer>


<!-- =========================
     JAVASCRIPT
========================= -->

<script>


/* =========================
   DATA
========================= */

const categories = [

    {
        name: "Smartphones",
        icon: "fa-mobile-screen",
        count: 24
    },

    {
        name: "Laptops",
        icon: "fa-laptop",
        count: 18
    },

    {
        name: "Clothing",
        icon: "fa-shirt",
        count: 42
    },

    {
        name: "Headphones",
        icon: "fa-headphones",
        count: 31
    },

    {
        name: "Footwear",
        icon: "fa-shoe-prints",
        count: 27
    },

    {
        name: "Accessories",
        icon: "fa-watch",
        count: 39
    }

];


const products = [

    {
        id: 1,
        name: "iPhone 14 Pro Max",
        category: "Smartphones",
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: "New",
        image:
        "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 2,
        name: "MacBook Pro 14",
        category: "Laptops",
        price: 1999,
        rating: 5,
        reviews: 86,
        badge: "",
        image:
        "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 3,
        name: "Apple Watch Series 8",
        category: "Accessories",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "Sale",
        image:
        "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 4,
        name: "Nike Air Max",
        category: "Footwear",
        price: 150,
        rating: 4,
        reviews: 53,
        badge: "",
        image:
        "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 5,
        name: "Sony A7 IV Camera",
        category: "Gadgets",
        price: 2499,
        rating: 5,
        reviews: 42,
        badge: "New",
        image:
        "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 6,
        name: "Premium Perfume",
        category: "Accessories",
        price: 120,
        rating: 5,
        reviews: 189,
        badge: "",
        image:
        "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 7,
        name: "Travel Backpack",
        category: "Accessories",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        badge: "Sale",
        image:
        "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 8,
        name: "Sony WH-1000XM5",
        category: "Headphones",
        price: 399,
        rating: 5,
        reviews: 156,
        badge: "",
        image:
        "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80"
    }

];


const reviews = [

    {
        name: "Ava Martin",
        role: "Verified Buyer",
        rating: 5,
        text:
        "Fast shipping and excellent support. The product exceeded my expectations!",
        image:
        "https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
    },

    {
        name: "Michael Lee",
        role: "Frequent Shopper",
        rating: 4,
        text:
        "Great selection and smooth checkout. Will definitely shop again.",
        image:
        "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
    },

    {
        name: "Sophia Chen",
        role: "Designer",
        rating: 5,
        text:
        "Love the quality and packaging. Everything arrived in perfect condition.",
        image:
        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
    }

];


/* =========================
   CART
========================= */

let cartCount = 0;

const cartCountElement =
    document.getElementById("cartCount");


function updateCart() {

    cartCountElement.textContent =
        cartCount;

}


/* =========================
   CATEGORIES
========================= */

const categoriesContainer =
    document.getElementById("categoriesContainer");


function renderCategories() {

    categoriesContainer.innerHTML = "";

    categories.forEach(category => {

        const element =
            document.createElement("div");

        element.className = "category";

        element.innerHTML = `

            <div class="category-icon">

                <i class="fas ${category.icon}"></i>

            </div>

            <h3>${category.name}</h3>

            <p>${category.count} items</p>

        `;

        element.addEventListener("click", () => {

            searchInput.value =
                category.name;

            filterProducts(category.name);

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });

        categoriesContainer.appendChild(element);

    });

}


/* =========================
   PRODUCTS
========================= */

const productsContainer =
    document.getElementById("productsContainer");


function renderProducts(list) {

    productsContainer.innerHTML = "";

    if (list.length === 0) {

        productsContainer.innerHTML = `

            <p style="
                grid-column:1/-1;
                text-align:center;
                padding:50px;
                color:#777;
            ">
                No products found.
            </p>

        `;

        return;
    }


    list.forEach(product => {

        const element =
            document.createElement("div");

        element.className = "product";


        let badge = "";

        if (product.badge) {

            badge = `

                <span class="product-badge
                ${product.badge === "Sale" ? "sale" : ""}">
                    ${product.badge}
                </span>

            `;

        }


        let oldPrice = "";

        if (product.oldPrice) {

            oldPrice = `

                <span class="old-price">
                    $${product.oldPrice.toLocaleString()}
                </span>

            `;

        }


        const stars =
            "★".repeat(product.rating) +
            "☆".repeat(5 - product.rating);


        element.innerHTML = `

            <div class="product-image">

                <img
                    src="${product.image}"
                    alt="${product.name}"
                >

                ${badge}

                <button class="wishlist">

                    <i class="far fa-heart"></i>

                </button>

            </div>


            <div class="product-info">

                <div class="product-category">
                    ${product.category}
                </div>

                <div class="product-name">
                    ${product.name}
                </div>

                <div>

                    <span class="price">
                        $${product.price.toLocaleString()}
                    </span>

                    ${oldPrice}

                </div>


                <div class="rating">

                    ${stars}

                    <span>
                        (${product.reviews})
                    </span>

                </div>


                <button
                    class="add-cart"
                    data-id="${product.id}"
                >

                    <i class="fas fa-cart-plus"></i>
                    Add to Cart

                </button>

            </div>

        `;


        productsContainer.appendChild(element);

    });


    document
        .querySelectorAll(".add-cart")
        .forEach(button => {

            button.addEventListener(
                "click",
                function() {

                    cartCount++;

                    updateCart();

                    this.classList.add("added");

                    this.innerHTML = `
                        <i class="fas fa-check"></i>
                        Added
                    `;


                    setTimeout(() => {

                        this.classList.remove("added");

                        this.innerHTML = `
                            <i class="fas fa-cart-plus"></i>
                            Add to Cart
                        `;

                    }, 1200);

                }
            );

        });

}


/* =========================
   SEARCH
========================= */

const searchInput =
    document.getElementById("searchInput");


function filterProducts(query) {

    const value =
        query.trim().toLowerCase();


    if (!value) {

        renderProducts(products);

        return;

    }


    const filtered =
        products.filter(product =>

            product.name
                .toLowerCase()
                .includes(value)

            ||

            product.category
                .toLowerCase()
                .includes(value)

        );


    renderProducts(filtered);

}


document
    .getElementById("searchButton")
    .addEventListener("click", () => {

        filterProducts(searchInput.value);

    });


searchInput
    .addEventListener("keydown", event => {

        if (event.key === "Enter") {

            filterProducts(searchInput.value);

        }

    });


/* =========================
   REVIEWS
========================= */

const reviewsContainer =
    document.getElementById("reviewsContainer");


function renderReviews() {

    reviewsContainer.innerHTML = "";


    reviews.forEach(review => {

        const element =
            document.createElement("div");

        element.className = "review";


        const stars =
            "★".repeat(review.rating) +
            "☆".repeat(5 - review.rating);


        element.innerHTML = `

            <div class="review-stars">
                ${stars}
            </div>

            <div class="review-text">
                "${review.text}"
            </div>

            <div class="review-user">

                <img
                    src="${review.image}"
                    alt="${review.name}"
                >

                <div>

                    <strong>
                        ${review.name}
                    </strong>

                    <span>
                        ${review.role}
                    </span>

                </div>

            </div>

        `;


        reviewsContainer.appendChild(element);

    });

}


/* =========================
   DEAL TIMER
========================= */

const dealEnd =
    new Date(
        Date.now() +
        24 * 60 * 60 * 1000
    );


function updateTimer() {

    const now =
        new Date();

    const difference =
        dealEnd - now;


    if (difference <= 0) {

        return;

    }


    const days =
        Math.floor(
            difference /
            (1000 * 60 * 60 * 24)
        );


    const hours =
        Math.floor(
            (difference %
            (1000 * 60 * 60 * 24)) /
            (1000 * 60 * 60)
        );


    const minutes =
        Math.floor(
            (difference %
            (1000 * 60 * 60)) /
            (1000 * 60)
        );


    const seconds =
        Math.floor(
            (difference %
            (1000 * 60)) /
            1000
        );


    document.getElementById("days")
        .textContent = days;


    document.getElementById("hours")
        .textContent =
        String(hours).padStart(2, "0");


    document.getElementById("minutes")
        .textContent =
        String(minutes).padStart(2, "0");


    document.getElementById("seconds")
        .textContent =
        String(seconds).padStart(2, "0");

}


updateTimer();

setInterval(updateTimer, 1000);


/* =========================
   BUTTONS
========================= */

document
    .getElementById("shopButton")
    .addEventListener("click", () => {

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });

    });


document
    .getElementById("dealButton")
    .addEventListener("click", () => {

        document
            .getElementById("deals")
            .scrollIntoView({
                behavior: "smooth"
            });

    });


document
    .getElementById("dealCartButton")
    .addEventListener("click", function() {

        cartCount++;

        updateCart();

        this.innerHTML = `
            <i class="fas fa-check"></i>
            Added to Cart
        `;

        this.style.background = "#16a34a";


        setTimeout(() => {

            this.innerHTML = `
                <i class="fas fa-shopping-cart"></i>
                Add to Cart
            `;

            this.style.background = "";

        }, 1500);

    });


/* =========================
   CART
========================= */

document
    .getElementById("cartButton")
    .addEventListener("click", () => {

        alert(
            "Your cart contains " +
            cartCount +
            " item" +
            (cartCount === 1 ? "" : "s") +
            "."
        );

    });


/* =========================
   NEWSLETTER
========================= */

document
    .getElementById("newsletterForm")
    .addEventListener("submit", event => {

        event.preventDefault();


        const email =
            document
                .getElementById("emailInput")
                .value
                .trim();


        const message =
            document.getElementById(
                "newsletterMessage"
            );


        if (!email.includes("@")) {

            message.textContent =
                "Please enter a valid email.";

            message.style.color =
                "#fca5a5";

            return;

        }


        message.textContent =
            "Thanks for subscribing!";

        message.style.color =
            "#86efac";


        document
            .getElementById("emailInput")
            .value = "";

    });


/* =========================
   MOBILE MENU
========================= */

document
    .getElementById("mobileMenuButton")
    .addEventListener("click", () => {

        const nav =
            document.querySelector(".nav");


        if (nav.style.display === "flex") {

            nav.style.display = "none";

        } else {

            nav.style.display = "flex";

            nav.style.position = "absolute";

            nav.style.top = "60px";

            nav.style.left = "0";

            nav.style.right = "0";

            nav.style.background = "white";

            nav.style.padding = "20px";

            nav.style.flexDirection = "column";

            nav.style.borderTop =
                "1px solid #eee";

        }

    });


/* =========================
   YEAR
========================= */

document.getElementById("year")
    .textContent =
    new Date().getFullYear();


/* =========================
   INITIAL LOAD
========================= */

renderCategories();

renderProducts(products);

renderReviews();

updateCart();


</script>

</body>
</html>
