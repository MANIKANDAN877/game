<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Samsung India | Mobiles</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
      font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif, sans-serif;
      background: #d6c8c8;
    }

    .navbar {
      background-color: #d70a33;
      padding: 10px 30px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
    }

    .navbar a,
    .dropbtn {
      color: white;
      padding: 14px 16px;
      text-decoration:double;
      font-weight: bold;
    }

    .navbar .left,
    .navbar .right {
      display: flex;
      align-items: center;
    }

    .dropdown {
      position: relative;
    }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: rgb(237, 236, 240);
      min-width: 160px;
      top: 50px;
      z-index: 99;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    .dropdown-content a {
      color: #333;
      padding: 12px 16px;
      display: block;
    }

    .dropdown:hover .dropdown-content {
      display: block;
    }

    .dropdown-content a:hover {
      background-color: #f0f0f0;
    }

    .hero {
      position: relative;
      height: 50vh;
      background: url('./2593068.webp') center/cover no-repeat;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      color: white;
      overflow: hidden;
    }

    .hero::before {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.4);
      z-index: 1;
    }

    .hero > div {
      position: relative;
      z-index: 2;
    }

    .hero h1 {
      font-size: 48px;
      margin-bottom: 10px;
    }

    .hero p {
      font-size: 20px;
    }

    section {
      padding: 40px 20px;
    }

    .section-title {
      text-align: center;
      font-size: 32px;
      margin-bottom: 20px;
      color: #f81740;
    }

    .products {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      row-gap: 40px;
      column-gap: 20px;
      max-width: 1200px;
      margin: auto;
    }

    .product {
      background: white;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      overflow: hidden;
      transition: transform 0.3s;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }

    .product:hover {
      transform: translateY(-5px);
    }

    .product img {
      width: 100%;
      height: 300px;
      object-fit:fill;
    }

    .product h3 {
      padding: 10px;
    }

    .product p {
      padding: 0 10px 10px;
      color: #555;
      flex-grow: 1;
    }

    .product-buttons {
      display: flex;
      justify-content: space-between;
      padding: 10px;
      gap: 10px;
    }

    .product-buttons button {
      flex: 1;
      padding: 10px;
      background-color: rgb(234, 8, 8);
      color: #f1eded;
      border: none;
      border-radius: 10px;
      font-weight:bolder;
      cursor:crosshair;
      transition: background-color 0.1s;
    }

    .product-buttons button:hover {
      background-color: #f6099f;
    }

    footer {
      background-color: #f80b0b;
      color: white;
      padding: 30px 20px;
      text-align: center;
    }

    footer p {
      margin: 5px 0;
    }
    #contact {
      background-color: #f8f8f8;
      padding: 50px 20px;
    }

    .contact-container {
      max-width: 700px;
      margin: auto;
      background: #8ac6ca;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    #contact h2 {
      text-align: center;
      margin-bottom: 20px;
      font-size: 28px;
      color: #333;
    }

    /* Form fields */
    .form-group {
      margin-bottom: 20px;
    }

    label {
      display: block;
      margin-bottom: 6px;
      font-weight: bold;
      color: #444;
    }

    input,
    textarea {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      border: 1px solid #ccc;
      border-radius: 5px;
      transition: border 0.3s ease;
    }

    input:focus,
    textarea:focus {
      border-color: #007bff;
      outline: none;
    }

    /* Submit button */
    .sub {
      width: 100%;
      padding: 12px;
      font-size: 16px;
      background-color: #007bff;
      border: none;
      color: white;
      border-radius: 5px;
      cursor: pointer;
      transition: background 0.3s ease;
    }

    .sub:hover {
      background-color: #0056b3;
    }
    /* About Us Section */
    #about {
      background-color: #ffffff;
      padding: 50px 20px;
    }

    .about-container {
      max-width: 1100px;
      margin: auto;
      display: flex;
      align-items: center;
      gap: 30px;
      flex-wrap: wrap;
    }

    .about-text {
      flex: 1 1 500px;
    }

    .about-text h2 {
      font-size: 28px;
      margin-bottom: 20px;
      color: #1428a0;
    }

    .about-text p {
      font-size: 16px;
      color: #444;
      line-height: 1.6;
      margin-bottom: 15px;
    }

    .about-image {
      flex: 1 1 400px;
      text-align: center;
    }

    .about-image img {
      max-width: 100%;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    }

    footer a {
      color: #bbb;
      margin: 0 10px;
      text-decoration: none;
    }

    footer a:hover {
      color: rgb(245, 243, 243);
    }

    @media (max-width: 600px) {
      .navbar .left,
      .navbar .right {
        flex-direction: column;
        align-items: flex-start;
      }
    }
    .manikandan{
      height:90px;
      width: 120px;
      position: relative;
      animation: mani 1s linear 1s 2 reverse both;
    }
    @keyframes mani {
      0% {
        margin-left: 0;
      }
      20%{
        margin-left: 32%;
      }
      60%{
        margin-left: 42%;
      }
      100% {
        margin-left: 100%;
      }
    }
  </style>
</head>
<body>
<script>
  function manikandan() {
    var name = document.getElementsByClassName("name").value;
    var email = document.getElementsByClassName("email").value;
    var message = document.getElementsByClassName("message").value;
    
    if (name.length > 1 && email.length > 1 && message.length > 1) {
      alert("You have successfully submitted the form");
    } else {
      alert("Please fill in all fields.");
    }
  }
</script>

<img src="./10-best-Wireless-Earbuds-8.jpg" alt="solid" class="manikandan">
  <div class="navbar">
    <div class="left">
      <div class="dropdown">
        <a class="dropbtn" href="#">home</a>
        <div class="dropdown-content">
          <a href="mobiles.html">refriget</a>
          <a href="mobiles.html">mobiles</a>
          <a href="mobiles.html">washing machine</a>
        </div>
      </div>
      <div class="dropdown">
        <a class="dropbtn" href="#">product details</a>
        <div class="dropdown-content">
          <a href="mobiles.html">refrigetor</a>
          <a href="mobiles.html">managing</a>
          <a href="mobiles.html">help</a>
        </div>
      </div>
      <div class="dropdown">
        <a class="dropbtn" href="television.html">Electronics</a>
        <div class="dropdown-content">
          <a href="#">refrigerator</a>
          <a href="#">washing machine 3.0</a>
          <a href="#">tv</a>
        </div>
      </div>
      <div class="dropdown">
        <a class="dropbtn" href="laptops.html">Electronics</a>
        <div class="dropdown-content">
          <a href="#">Electric</a>
          <a href="#">airbuds</a>
          <a href="#">home appliance</a>
        </div>
      </div>
    </div>
    <div class="right">
      <div class="dropdown">
        <a class="dropbtn" href="#" style="right: 120%;">Support</a>
        <div class="dropdown-content">
          <a href="#">manikandan@gmail.com</a>
          <a href="#">9385807287</a>
        </div>
      </div>
      <div class="dropdown">
        <a class="dropbtn"></a>
      </div>
    </div>
  </div>

  <div class="hero">
    <div>
      <h1>manikandan store</h1>
      <p>good make a unique way</p>
    </div>
  </div>

  <section id="featured-products">
    <h2 class="section-title">Featured Watches</h2>
    <div class="products">
      <div class="product">
        <img src="./10-best-Wireless-Earbuds-8.jpg" alt="airbuds" />
        <h3>airbuds apple</h3>
        <p>₹29,999 <strike>₹39,900   </strike> <strong>15% off</strong> <br>
        + ₹69 Protect Promise Fee <p style="color: #fb901e;">Learn more</p></p>
        <div class="product-buttons">
          <button>Buy now</button>
          <button>Add to cart</button>
        </div>
      </div>
      <div class="product">
      <a href="./">click me</a>
        <img src="./FHM1408BDL-Washing-Machines-Right-View-MZ-04-v1.avif" alt="Galaxy S22 Ultra" />
        <h3>washing machine</h3>
        <p>₹50,999 <strike>₹59,900   </strike> <strong>15% off</strong> <br>
        + ₹69 Protect Promise Fee <p style="color: #fb901e;">Learn more</p></p> 
        <div class="product-buttons">
          <button>Buy now</button>
          <button>Add to cart</button>
        </div>
      </div>
      <div class="product">
        <img src="./2593068.webp" alt="Galaxy S23 Ultra" />
        <h3>laptop</h3>
        <p>₹38,999 <strike>₹45,900   </strike> <strong>15% off</strong> <br>
        + ₹69 Protect Promise Fee <p style="color: #fb901e;">Learn more</p></p> 
        <div class="product-buttons">
          <button>Buy now</button>
          <button>Add to cart</button>
        </div>
      </div>
      <div class="product">
        <img src="./OIP.jpeg" alt="Galaxy Flip4" />
        <h3>fridge</h3>
        <p>₹50,999 <strike>₹59,900   </strike> <strong>15% off</strong> <br>
        + ₹69 Protect Promise Fee <p style="color: #fb901e;">Learn more</p></p>  
        <div class="product-buttons">
          <button>Buy now</button>
          <button>Add to cart</button>
        </div>
      </div>
      <div class="product">
        <img src="./10-best-Wireless-Earbuds-8.jpg" alt="airbuds" />
        <h3>airbuds apple</h3>
        <p>₹29,999 <strike>₹39,900   </strike> <strong>15% off</strong> <br>
        + ₹69 Protect Promise Fee <p style="color: #fb901e;">Learn more</p></p>
        <div class="product-buttons">
          <button> <strong>Buy </strong> now</button>
          <button>Add to cart</button>
        </div>
      </div>
      <div class="product">
        <img src="./FHM1408BDL-Washing-Machines-Right-View-MZ-04-v1.avif" alt="Galaxy S22 Ultra" />
        <h3>washing machine</h3>
        <p>₹50,999 <strike>₹59,900   </strike> <strong>15% off</strong> <br>
        + ₹69 Protect Promise Fee <p style="color: #fb901e;">Learn more</p></p> 
        <div class="product-buttons">
          <button>Buy now</button>
          <button>Add to cart</button>
        </div>
      </div>
      <div class="product">
        <img src="./2593068.webp" alt="Galaxy S23 Ultra" />
        <h3>laptop</h3>
        <p>₹38,999 <strike>₹45,900   </strike> <strong>15% off</strong> <br>
        + ₹69 Protect Promise Fee <p style="color: #fb901e;">Learn more</p></p> 
        <div class="product-buttons">
          <button>Buy now</button>
          <button>Add to cart</button>
        </div>
      </div>
       <div class="product">
        <img src="./10-best-Wireless-Earbuds-8.jpg" alt="airbuds" />
        <h3>airbuds apple</h3>
        <p>₹29,999 <strike>₹39,900   </strike> <strong>15% off</strong> <br>
        + ₹69 Protect Promise Fee <p style="color: #fb901e;">Learn more</p></p>
        <div class="product-buttons">
          <button>Buy now</button>
          <button>Add to cart</button>
          </div>
          </div>
      <div class="product">
        <img src="./OIP.jpeg" alt="Galaxy Flip4" />
        <h3>fridge</h3>
        <p>₹50,999 <strike>₹59,900   </strike> <strong>15% off</strong> <br>
        + ₹69 Protect Promise Fee <p style="color: #fb901e;">Learn more</p></p>  
        <div class="product-buttons">
          <button>Buy now</button>
          <button>Add to cart</button>
        </div>
      </div>
    </div>
  </section>

  <section id="contact">
    <div class="contact-container">
      <h2>Contact Us</h2>
      <form>
        <div class="form-group">
          <label for="name">Your Name</label>
          <input type="text" id="name" placeholder="Enter your name">
        </div>
        <div class="form-group">
          <label for="email">Your Email</label>
          <input type="email" id="email" placeholder="Enter your email">
        </div>
        <div class="form-group">
          <label for="message">Message</label>
          <textarea id="message" placeholder="Enter your message"></textarea>
        </div>
        <button type="button" class="sub" onclick="manikandan()">Send Message</button>
      </form>
    </div>
  </section>

  <footer>
    <p>&copy; manikandan limited. All rights reserved.</p>
    <p>thank u for visit</p>
    <p>
      <a href="#">Privacy Policy</a> |
      <a href="#">Terms</a> |
      <a href="#">Support</a>|
      <a href="">carrer</a>
      <a href="https://accounts.google.com/v3/signin/accountchooser?continue=https%3A%2F%2Fmail.google.com%2Fmail%2F%3Fextsrc%3Dmailto%26url%3Dmailto%3Amanikandan24314%40gmail.com%26view&emr=1&ifkv=AdBytiNgKmLMOn5mtVe0eDbAV6UG_1axsd4ltrddspiZ_2U0CZYoysyLw5rWj3D--7YAKcXqLm77NA&ltmpl=default&ltmplcache=2&osid=1&passive=true&rm=false&scc=1&service=mail&flowName=GlifWebSignIn&flowEntry=ServiceLogin&dsh=S1848374962%3A1755003136587537">manikandan24314@gmail.com</a>
      <a href="https://faq.whatsapp.com/1324084875126592/?helpref=uf_share&cms_platform=web">778093735</a>
    </p>
    <a href="https://faq.whatsapp.com/1324084875126592/?helpref=uf_share&cms_platform=web" target="_self">Open Blank Page</a>
    <button onclick="window.open('https://www.google.com', '_blank')">Go to Google</button>
    <button onclick="window.open('https://www.vijay.com','_self')">submit</button>
  </footer>
</body>
</html>
