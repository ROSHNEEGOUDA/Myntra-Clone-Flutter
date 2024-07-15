class ProductDto {
  final String id;
  final String imageUrl;
  final String name;
  final String description;
  final String price;
  final String mrpPrice;
  final String discountString;

  ProductDto({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.mrpPrice,
    required this.discountString,
  });
}
