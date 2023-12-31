<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
	
<head>
	<link rel="stylesheet" type="text/css" href="home1.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <style>
		body{
			margin: 0;
			padding-top: 50px;
			box-sizing: border-box;
			font-family: 'Open Sans', sans-serif;
			height: 100%;
        }

		/* Style the navigation bar */
		
	   h2{color:rgb(0, 128, 128)}
			*{
			    margin: 0;
			    padding: 0;
			    box-sizing: border-box;
			}
			
			
					
		header{
		    position: fixed;
		    top: 0;
		    left: 0;
		    right: 0;
		    background-color: rgb(255, 128, 0);
		    color: #fff;
		    padding: 10px 0;
		}

		
		.nav_container {
		    max-width: 1200px;
		    margin: 0 auto;
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		}
		
		.logo{
		    font-size: 24px;
		    font-weight: bold;
		}
		
		.menu{
		    list-style: none;
		    display: flex;
		    gap: 20px;
		}
		
		.menu li {
		    padding: 0;
		    margin: 0;
		}
		
		.menu a {
		    text-decoration: none;
		    color:rgb(64, 0, 64);
		    font-weight: bold;
		    font-size: 18px;
		    transition: color 0.3s;
		}
		
		.menu a:hover {
		    color: rgb(128, 255, 0); 
		}
		
		
        /* Style the left-container*/
	        
	     
	  .left-container {
	        background: whitesmoke;
	        position: fixed;
	        height: 100%;
	        overflow-y: auto;
	        width: 300px; 
	    }
	
	    .menu-item {
	        display: grid;
	        grid-template-columns: 1fr; 
	        grid-gap: 10px;
	    }
	
	    .menu-item h2 {
	        text-align: center;
	        font-weight: 900;
	    }
	
	    .menu-item a {
	        background-color: sandybrown;
	        border: 2px solid black;
	        text-decoration: none;
	        font-size: 20px;
	        padding: 15px;
	        font-family: Verdana, Geneva, Tahoma, sans-serif;
	        color: lightseagreen;
	        font-weight: 700;
	        text-align: center;
	        transition: background-color 0.3s ease, color 0.3s ease;
	    }
	
	    .menu-item a:hover {
	        background-color: lightseagreen;
	        color: sandybrown;
	    }   
	    
                  /* Style the container and item */
       
	    .container{
	    /*display: grid;
	    grid-template-columns: 349px 1fr;  */
	    margin-left: 300px;
	    width: 77%;
	    min-height: -webkit-fill-available;
	    overflow: hidden;
	  }
	  
	   #food-item{
		  margin: 0;
		  padding: 0;
      }  
         .menu-item a:hover{
          background: rgb(128, 255, 0);
          color: darkslategray;
          font-weight: 900;
		}  
		
		#Paneer,#chicken,#Vegitable{
		    margin-top: 50px;   
		}
		
		#category-name{
		    margin: 10px;
		    font-size: 35px;   
		    color: coral;
		    font-family: 'Aclonica', sans-serif;
		}
		#item-card{
			width:285px;
			height: 315px;
			padding: 10px;
			margin: 10px;
			display: inline-block;
			border-radius: 5px;
			background: rgb(253, 221, 226);
			transition: 0.5s all ease-in-out;
		}
		
		#item-card img{
			width: 262px;
			height: 200px;
			border-radius: 100%;
			cursor: pointer;
			margin: auto;
			display: block;
			margin-bottom: 15px;
		    transition: 0.5s all ease-in-out;
		}
		#item-card img:hover{
			transform: scale(1.2);
		}
		#card-top{
			display: flex;
			/*margin: 5px;*/
		   justify-content: space-between;
		}
		#rating{
			padding: 7px;
			color: goldenrod;
			background-color: black;
			font-size: 20px;
			border-radius: 15px;	
		}
		.fa-heart-o{
			padding: 9px;
			background-color: white;
			border-radius: 50%;
		}
		#item-name{
			text-align: center;
			margin:5px 0;
			font-weight: 900;
			font-size: 18px;
			color: darkslategray;
		}
		#item-price{
			margin: 0px;
			font-weight: 700;
			font-size: 18px;
			color: rgb(2, 27,30);
		}
		#cart-buttom{
			display: flex;
			justify-content:space-around;
		}
		#addtocart{
			background-color: rgb(253, 221, 226);
			margin: -1px;
			font-weight: 700;
			font-size: 18px;
			color: rgb(2, 27,30);
		}
		#addtocart:hover{
			color: lightseagreen;
		}
	
    </style>
    
</head>
    
<body>
	
	<header>

        <nav >
            <div class="nav_container">
                <h2 class="logo">Food Order</h2>
                <ul class="menu">
                    <li><a href="home.jsp">Home</a></li>              
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact</a></li>
                    <li><a href="login.jsp">login</a></li>
                    <li><a href="registration.jsp">SignUp</a></li>                              
                </ul>
            </div>
        </nav>
  </header>
	
<div class="left-container" id="menu">
    <div class="menu-item">
        <h2>Category</h2>
        <a href="#biryani">Biryani</a>
        <a href="#chicken">Chicken Delicious</a>
        <a href="#Paneer">Paneer Mania</a>
        <a href="#Vegitable">Pure Veg Dishes</a>
    </div>
</div>
	

       
    <div class="container" id="container">
        <div id="food-item">
		   <div id="biryani">
			   <p id="category-name"> Biryani</p>
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.2</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/biryani/Ambur-Chicken-Biryani.jpg" alt="">
				   <p id="item-name">Ambur Biryani</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price :  ₹130</p>
				     <button id="addtocart">add cart</button>						   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.3</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/biryani/hyd-Mutton-Biryani.jpg" alt="">
				   <p id="item-name">Hyderabadi Biryani</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹190</p>
					 <button id="addtocart">add cart</button>						   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.4</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/biryani/egg-biryani.jpeg" alt="">
				   <p id="item-name">Egg Biryani</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹120</p>
					 <button id="addtocart">add cart</button>						   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.3</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/biryani/goan-fish-biryani.jpg" alt="">
				   <p id="item-name">Fish Biryani</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹180</p>
					<button id="addtocart">add cart</button>						   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.4</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/biryani/memonibiryani.png" alt="">
				   <p id="item-name">Mutton Biryani</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹250</p>
					 <button id="addtocart">add cart</button>					   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.2</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/biryani/kamrupi-biryani.jpg" alt="">
				   <p id="item-name">Kampuri Biryani</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹210</p>
					 <button id="addtocart">add cart</button>						   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.2</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/biryani/mughlai-biryani.jpg" alt="">
				   <p id="item-name">Mughlai Biryani</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹240</p>
					 <button id="addtocart">add cart</button>						   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.3</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/biryani/kashmiri.pulao.jpg" alt="">
				   <p id="item-name">kashmiri Biryani</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹210</p>
					 <button id="addtocart">add cart</button>						   
				   </div>
			   </div>
			   
		   </div>
		   
		   
		   
		   <div id="chicken">
			   <p id="category-name">Chicken Delicious</p>
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.3</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/chicken/Chicken_roast.jpg" alt="">
				   <p id="item-name">Chicken Roast</p>				   
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹110</p>
					<button id="addtocart">add cart</button>					   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.4</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/chicken/Chicken-Curry.jpg" alt="">
				   <p id="item-name">Chicken Curry</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹120</p>
					<button id="addtocart">add cart</button>						   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.3</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/chicken/Chicken-do-Pyaza.jpg" alt="">
				   <p id="item-name">Chicken Do Pyaza</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹220</p>
					 <button id="addtocart">add cart</button>					   
				   </div>		   
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.5</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/chicken/Chicken-Masala.jpeg" alt="">
				   <p id="item-name">Chicken Masala</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹240</p>
					 <button id="addtocart">add cart</button>						   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.5</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/chicken/Handi-chicken.jpg" alt="">
				   <p id="item-name">Handi Chicken</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹290</p>
					  <button id="addtocart">add cart</button>							   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.3</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/chicken/Murgh-Musallam.jpg" alt="">
				   <p id="item-name">Murgh Musallam</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹205</p>
					  <button id="addtocart">add cart</button>							   
				   </div>
			   </div>
			   
		   </div>
		   
		   
		   
		   <div id="Paneer">
			   <p id="category-name">Paneer Mania</p>
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.3</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/paneer/Matar-Paneer.jpg" alt="">
				   <p id="item-name">Matar Paneer</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹190</p>
					  <button id="addtocart">add cart</button>							   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.2</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/paneer/palak-paneer.jpg" alt="">
				   <p id="item-name">Palak Paneer </p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹200</p>
					 <button id="addtocart">add cart</button>							   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.4</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/paneer/paneer-butter-masala.jpg" alt="">
				   <p id="item-name">Paneer Butter Masala</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹190</p>
					 <button id="addtocart">add cart</button>						   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.3</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/paneer/Paneer-Do-Pyaza.jpg" alt="">
				   <p id="item-name">Paneer do Pyaza</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹210</p>
					  <button id="addtocart">add cart</button>							   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.3</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/paneer/Paneer-Hyderabadi.jpg" alt="">
				   <p id="item-name">Hyderabadi paneer</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹160</p>
					  <button id="addtocart">add cart</button>						   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.2</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/paneer/paneer-lababdar.jpg" alt="">
				   <p id="item-name">Paneer Lababdar</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹180</p>
					  <button id="addtocart">add cart</button>					   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.3</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/paneer/shahi-paneer.jpg" alt="">
				   <p id="item-name">Shahi Paneer</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹280</p>
					  <button id="addtocart">add cart</button>							   
				   </div>
			   </div>
		   </div>
		   
		   
		   
		   <div id="Vegitable">
			   <p id="category-name">Pure Veg Dishes</p>
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.3</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/vegetable/navratan-korma_-vegetable.png" alt="">
				   <p id="item-name">Navratan Korma</p>
				  <div id="cart-buttom">
				     <p id="item-price">Price : ₹200</p>
					  <button id="addtocart">add cart</button>							   
				   </div>
			   </div>
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.2</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/vegetable/VEG-JALFREZI.jpg" alt="">
				   <p id="item-name">Veg Jalfrezi</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹190</p>
					  <button id="addtocart">add cart</button>							   
				   </div>
			   </div>
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.4</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/vegetable/vegetable-biryani.jpg" alt="">
				   <p id="item-name">Veg Biryani</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹150</p>
					  <button id="addtocart">add cart</button>						   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.2</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/vegetable/vegetable-curry.jpeg" alt="">
				   <p id="item-name">Veg Curry</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹150</p>
					  <button id="addtocart">add cart</button>						   
				   </div>			
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.3</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/vegetable/vegetable-kolhapuri.jpg" alt="">
				   <p id="item-name">Veg Kolhapur</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹190</p>
					 <button id="addtocart">add cart</button>						   
				   </div>
			   </div>
			   
			   <div id="item-card">
				   <div id="card-top">
					   <i class="fa fa-star" id="rating">4.2</i>
					   <i class="fa fa-heart-o add-to-cart"></i>
				   </div>
				   <img src="images/vegetable/vegetable-pakora.jpg" alt="">
				   <p id="item-name">Veg Pakora</p>
				   <div id="cart-buttom">
				     <p id="item-price">Price : ₹80</p>
					  <button id="addtocart">add cart</button>							   
				   </div>
			   </div>
		   </div>
		   
		   
	  </div>
      </div>
  
    
    
</body>
    
</html>
