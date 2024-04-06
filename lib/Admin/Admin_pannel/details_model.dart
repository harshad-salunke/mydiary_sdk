class Product {
  final String productId;
  final String productName;
  final String price1;
  final String quantity1;
  final String price2;
  final String quantity2;
  final String price3;
  final String quantity3;
  double? fat;
  int? calories;
  int? protein;
  DateTime? expiryDate;
  DateTime? insertionDate;
  int? stock;

  // Constructor for creating product with basic information
  Product({
    required this.productId,
    required this.productName,
    required this.price1,
    required this.quantity1,
    required this.price2,
    required this.quantity2,
    required this.price3,
    required this.quantity3,
  });

  // Named constructor for adding additional details to product
  Product.withDetails({
    required this.productId,
    required this.productName,
    required this.price1,
    required this.quantity1,
    required this.price2,
    required this.quantity2,
    required this.price3,
    required this.quantity3,
    required this.fat,
    required this.calories,
    required this.protein,
    required this.expiryDate,
    required this.insertionDate,
    required this.stock,
  });
}