import 'Product.dart';

class MyProducts {
  static List<Product> menProducts = [
    Product(
      id: 1,
      name: "COTTON - SILK KNIT",
      category: "Men",
      price: 45.95,
      description:
          "Knit top made of a spun cotton and silk blend. Round neck and short sleeves. Ribbed trims.",
      images: [
        "assets/images/tshirt1.jpg",
        "assets/images/tshirt2.jpg",
        "assets/images/tshirt3.jpg",
        "assets/images/tshirt4.jpg",
        "assets/images/tshirt5.jpg"
      ],
      quantity: 1,
    ),
    Product(
      id: 1,
      name: "COTTON - SILK KNIT",
      category: "Men",
      price: 45.95,
      description:
          "Knit top made of a spun cotton and silk blend. Round neck and short sleeves. Ribbed trims.",
      images: [
        "assets/images/tshirt1.jpg",
        "assets/images/tshirt2.jpg",
        "assets/images/tshirt3.jpg",
        "assets/images/tshirt4.jpg",
        "assets/images/tshirt5.jpg"
      ],
      quantity: 1,
    ),
    Product(
      id: 1,
      name: "COTTON - SILK KNIT",
      category: "Men",
      price: 45.95,
      description:
          "Knit top made of a spun cotton and silk blend. Round neck and short sleeves. Ribbed trims.",
      images: [
        "assets/images/tshirt1.jpg",
        "assets/images/tshirt2.jpg",
        "assets/images/tshirt3.jpg",
        "assets/images/tshirt4.jpg",
        "assets/images/tshirt5.jpg"
      ],
      quantity: 1,
    ),
 
 
    // Add more men's products here
  ];

  static List<Product> womenProducts = [
    Product(
      id: 11,
      name: "METALLIC THREAD FLORAL PRINT SHIRT",
      category: "Women",
      price: 32.95,
      description: "fsjfsdf",
      images: [
        "assets/images/wpitem1.jpg",
        "assets/images/wpitem2.jpg",
        "assets/images/wpitem3.jpg",
        "assets/images/wpitem4.jpg",
        "assets/images/wpitem2.jpg"
      ],
      quantity: 1,
    ),
    Product(
      id: 11,
      name: "METALLIC THREAD FLORAL PRINT SHIRT",
      category: "Women",
      price: 32.95,
      description: "fsjfsdf",
      images: [
        "assets/images/wpitem1.jpg",
        "assets/images/wpitem2.jpg",
        "assets/images/wpitem3.jpg",
        "assets/images/wpitem4.jpg",
        "assets/images/wpitem2.jpg"
      ],
      quantity: 1,
    ),
    Product(
      id: 11,
      name: "METALLIC THREAD FLORAL PRINT SHIRT",
      category: "Women",
      price: 32.95,
      description: "fsjfsdf",
      images: [
        "assets/images/wpitem1.jpg",
        "assets/images/wpitem2.jpg",
        "assets/images/wpitem3.jpg",
        "assets/images/wpitem4.jpg",
        "assets/images/wpitem2.jpg"
      ],
      quantity: 1,
    ),
    Product(
      id: 11,
      name: "METALLIC THREAD FLORAL PRINT SHIRT",
      category: "Women",
      price: 32.95,
      description: "fsjfsdf",
      images: [
        "assets/images/wpitem1.jpg",
        "assets/images/wpitem2.jpg",
        "assets/images/wpitem3.jpg",
        "assets/images/wpitem4.jpg",
        "assets/images/wpitem2.jpg"
      ],
      quantity: 1,
    ),
    
    // Add more women's products here
  ];

  static List<Product> getAllProducts() {
    List<Product> allProducts = [];
    allProducts.addAll(menProducts);
    allProducts.addAll(womenProducts);
    return allProducts;
  }
}
