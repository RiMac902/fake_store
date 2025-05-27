const productsData = [
  {
    "id": 1,
    "title": "Fjallraven Backpack Classic",
    "price": 109.95,
    "description": "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
    "category": "men's clothing",
    "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
    "rating": {
      "rate": 4.5,
      "count": 120
    }
  },
  {
    "id": 2,
    "title": "Premium Slim Fit T-Shirt",
    "price": 22.3,
    "description": "Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable comfort.",
    "category": "men's clothing",
    "image": "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
    "rating": {
      "rate": 4.1,
      "count": 259
    }
  },
  {
    "id": 3,
    "title": "Cotton Jacket Winter Edition",
    "price": 55.99,
    "description": "Great outerwear jacket for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing.",
    "category": "men's clothing",
    "image": "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
    "rating": {
      "rate": 4.7,
      "count": 500
    }
  },
  {
    "id": 4,
    "title": "Leather Moto Biker Jacket",
    "price": 29.95,
    "description": "100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER), Faux leather material for style and comfort.",
    "category": "women's clothing",
    "image": "https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg",
    "rating": {
      "rate": 4.8,
      "count": 340
    }
  },
  {
    "id": 5,
    "title": "Silver Dragon Bracelet",
    "price": 695.0,
    "description": "From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean's pearl.",
    "category": "jewelery",
    "image": "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg",
    "rating": {
      "rate": 4.6,
      "count": 400
    }
  },
  {
    "id": 6,
    "title": "Casual Denim Jacket",
    "price": 89.99,
    "description": "Classic denim jacket with modern fit, perfect for casual wear and evening outings.",
    "category": "men's clothing",
    "image": "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
    "rating": {
      "rate": 4.3,
      "count": 235
    }
  },
  {
    "id": 7,
    "title": "Summer Floral Dress",
    "price": 49.99,
    "description": "Light and breezy summer dress with floral pattern, perfect for beach and casual wear.",
    "category": "women's clothing",
    "image": "https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg",
    "rating": {
      "rate": 4.4,
      "count": 312
    }
  },
  {
    "id": 8,
    "title": "Gold Plated Necklace",
    "price": 299.99,
    "description": "Elegant gold plated necklace with crystal pendant, suitable for special occasions.",
    "category": "jewelery",
    "image": "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg",
    "rating": {
      "rate": 4.8,
      "count": 158
    }
  },
  {
    "id": 9,
    "title": "Smart Watch Pro",
    "price": 199.99,
    "description": "Advanced smartwatch with health tracking and notification features.",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg",
    "rating": {
      "rate": 4.5,
      "count": 425
    }
  },
  {
    "id": 10,
    "title": "Wireless Earbuds",
    "price": 129.99,
    "description": "High-quality wireless earbuds with noise cancellation and long battery life.",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
    "rating": {
      "rate": 4.6,
      "count": 589
    }
  },
  {
    "id": 11,
    "title": "Running Shoes Pro",
    "price": 89.99,
    "description": "Professional running shoes with advanced cushioning and support.",
    "category": "sports",
    "image": "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
    "rating": {
      "rate": 4.7,
      "count": 245
    }
  },
  {
    "id": 12,
    "title": "Yoga Mat Premium",
    "price": 29.99,
    "description": "Extra thick yoga mat with carrying strap, perfect for all types of yoga.",
    "category": "sports",
    "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
    "rating": {
      "rate": 4.3,
      "count": 178
    }
  },
  {
    "id": 13,
    "title": "Designer Sunglasses",
    "price": 159.99,
    "description": "Stylish designer sunglasses with UV protection and polarized lenses.",
    "category": "accessories",
    "image": "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg",
    "rating": {
      "rate": 4.4,
      "count": 315
    }
  },
  {
    "id": 14,
    "title": "Leather Wallet",
    "price": 45.99,
    "description": "Genuine leather wallet with multiple card slots and coin pocket.",
    "category": "accessories",
    "image": "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
    "rating": {
      "rate": 4.2,
      "count": 267
    }
  },
  {
    "id": 15,
    "title": "Gaming Laptop",
    "price": 1299.99,
    "description": "High-performance gaming laptop with latest graphics and processor.",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
    "rating": {
      "rate": 4.8,
      "count": 189
    }
  },
  {
    "id": 16,
    "title": "Wireless Mouse",
    "price": 29.99,
    "description": "Ergonomic wireless mouse with adjustable DPI and programmable buttons.",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
    "rating": {
      "rate": 4.3,
      "count": 432
    }
  },
  {
    "id": 17,
    "title": "Evening Gown",
    "price": 199.99,
    "description": "Elegant evening gown with detailed embroidery and flowing design.",
    "category": "women's clothing",
    "image": "https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg",
    "rating": {
      "rate": 4.7,
      "count": 156
    }
  },
  {
    "id": 18,
    "title": "Business Suit",
    "price": 299.99,
    "description": "Classic business suit with modern fit and premium fabric.",
    "category": "men's clothing",
    "image": "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
    "rating": {
      "rate": 4.5,
      "count": 234
    }
  },
  {
    "id": 19,
    "title": "Diamond Ring",
    "price": 999.99,
    "description": "Beautiful diamond ring with white gold band, perfect for special occasions.",
    "category": "jewelery",
    "image": "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg",
    "rating": {
      "rate": 4.9,
      "count": 89
    }
  },
  {
    "id": 20,
    "title": "Sports Watch",
    "price": 79.99,
    "description": "Water-resistant sports watch with multiple tracking features.",
    "category": "accessories",
    "image": "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
    "rating": {
      "rate": 4.4,
      "count": 378
    }
  },
  {
    "id": 21,
    "title": "Hiking Backpack",
    "price": 129.99,
    "description": "Large capacity hiking backpack with multiple compartments and rain cover.",
    "category": "sports",
    "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
    "rating": {
      "rate": 4.6,
      "count": 245
    }
  },
  {
    "id": 22,
    "title": "Wireless Keyboard",
    "price": 59.99,
    "description": "Slim wireless keyboard with backlight and multimedia keys.",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
    "rating": {
      "rate": 4.3,
      "count": 312
    }
  },
  {
    "id": 23,
    "title": "Summer Hat",
    "price": 24.99,
    "description": "Wide-brim summer hat with UV protection and adjustable strap.",
    "category": "accessories",
    "image": "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg",
    "rating": {
      "rate": 4.2,
      "count": 198
    }
  },
  {
    "id": 24,
    "title": "Casual Sneakers",
    "price": 69.99,
    "description": "Comfortable casual sneakers suitable for everyday wear.",
    "category": "shoes",
    "image": "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
    "rating": {
      "rate": 4.5,
      "count": 423
    }
  },
  {
    "id": 25,
    "title": "Tablet Pro",
    "price": 499.99,
    "description": "High-performance tablet with large display and stylus support.",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
    "rating": {
      "rate": 4.7,
      "count": 267
    }
  },
  {
    "id": 26,
    "title": "Winter Scarf",
    "price": 34.99,
    "description": "Warm winter scarf made from premium wool blend.",
    "category": "accessories",
    "image": "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
    "rating": {
      "rate": 4.4,
      "count": 156
    }
  },
  {
    "id": 27,
    "title": "Office Chair",
    "price": 199.99,
    "description": "Ergonomic office chair with adjustable features and lumbar support.",
    "category": "furniture",
    "image": "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg",
    "rating": {
      "rate": 4.6,
      "count": 189
    }
  },
  {
    "id": 28,
    "title": "Desk Lamp",
    "price": 39.99,
    "description": "LED desk lamp with adjustable brightness and color temperature.",
    "category": "home",
    "image": "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
    "rating": {
      "rate": 4.3,
      "count": 234
    }
  },
  {
    "id": 29,
    "title": "Coffee Maker",
    "price": 89.99,
    "description": "Programmable coffee maker with thermal carafe and multiple brewing options.",
    "category": "home",
    "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
    "rating": {
      "rate": 4.5,
      "count": 345
    }
  },
  {
    "id": 30,
    "title": "Bluetooth Speaker",
    "price": 79.99,
    "description": "Portable Bluetooth speaker with waterproof design and long battery life.",
    "category": "electronics",
    "image": "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
    "rating": {
      "rate": 4.4,
      "count": 412
    }
  }
];

const cartsData = [
  {
    "id": 1,
    "userId": 1,
    "date": "2023-02-03",
    "products": [
      {
        "productId": 1,
        "quantity": 2
      },
      {
        "productId": 2,
        "quantity": 1
      }
    ]
  },
  {
    "id": 2,
    "userId": 1,
    "date": "2023-02-03",
    "products": [
      {
        "productId": 3,
        "quantity": 1
      },
      {
        "productId": 4,
        "quantity": 3
      }
    ]
  }
]; 