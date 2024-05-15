class Product {
  final int id;
  final String name;
  final String category;
  final List<String> images; // Changed from String to List<String>
  final String description;
  final double price;
  int quantity;
  
  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.description,
    required this.quantity,
    required this.images, // Updated to accept a list of strings
  });

 

  
}
