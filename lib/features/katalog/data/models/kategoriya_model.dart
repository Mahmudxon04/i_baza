class CatalogModel1 {
  final int id;
  final String image;
  final String name;

  CatalogModel1({
    required this.id,
    required this.image,
    required this.name,
  });

  factory CatalogModel1.fromJson(Map<String, dynamic> json) {
    return CatalogModel1(
      id: json['id'],
      image: json['image'],
      name: json['name'],
    );
  }
}
