class CatalogModel {
  final int id;
  final String image;
  final String name;
  final String description;
  final String price;
  final bool like;

  CatalogModel({
    required this.id,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.like,
  });

  factory CatalogModel.fromJson(Map<String, dynamic> json) {
    return CatalogModel(
      id: json['id'],
      image: json['image'],
      name: json['name'],
      description: json['description_product'],
      price: json['price'],
      like: json['is_liked'],
    );
  }
}
