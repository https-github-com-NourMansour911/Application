class UserModel {
  String name;
  String email;
  String? img;
  String? phone;

  UserModel({
    required this.name,
    required this.email,
    this.img,
    this.phone,
  });
}
