class UserModel {
  final int id;

  final String name;
  final String category;
  final String description;
  final String image;
  UserModel({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.image,
  });

  factory UserModel.fromJson(data) {
    return UserModel(
      id: data['id'],
      name: data['title'],
      category: data['category'],
      description: data['description'],
      image: data['image'],
    );
  }
}
