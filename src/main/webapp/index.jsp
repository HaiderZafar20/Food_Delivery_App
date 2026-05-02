<!DOCTYPE html>
<html>
<head>
    <title>FoodExpress</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<header class="header">
    <h1>🍔 FoodExpress</h1>
    <nav>
        <a href="#">Home</a>
        <a href="#menu">Menu</a>
        <a href="#offers">Offers</a>
        <a href="#contact">Contact</a>
    </nav>
</header>

<section class="hero">
    <div class="hero-content">
        <h2>Delicious Food, Delivered Fast</h2>
        <p>Order your favorite meals anytime, anywhere</p>
        <button onclick="orderNow()">Order Now</button>
    </div>
</section>

<section id="menu" class="menu">
    <h2>Popular Dishes</h2>
    <div class="menu-container">
        <div class="card">
            <h3>🍕 Pizza</h3>
            <p>Cheesy delight with fresh toppings</p>
            <button onclick="addToCart('Pizza')">Add to Cart</button>
        </div>
        <div class="card">
            <h3>🍔 Burger</h3>
            <p>Juicy grilled burger with fries</p>
            <button onclick="addToCart('Burger')">Add to Cart</button>
        </div>
        <div class="card">
            <h3>🍝 Pasta</h3>
            <p>Italian pasta with rich sauce</p>
            <button onclick="addToCart('Pasta')">Add to Cart</button>
        </div>
        <div class="card">
            <h3>🥗 Salad</h3>
            <p>Healthy and fresh veggies</p>
            <button onclick="addToCart('Salad')">Add to Cart</button>
        </div>
    </div>
</section>
</html>