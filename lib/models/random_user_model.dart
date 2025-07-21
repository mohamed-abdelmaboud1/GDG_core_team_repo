class RandomUserModel {
  final String username;
  final String sex;
  final String address;
  final String name;
  final String email;
  final String birthday;

  RandomUserModel({
    required this.username,
    required this.sex,
    required this.address,
    required this.name,
    required this.email,
    required this.birthday,
  });

  factory RandomUserModel.fromJson(Map<String, dynamic> json) {
    return RandomUserModel(
      username: json['username'],
      sex: json['sex'],
      address: json['address'],
      name: json['name'],
      email: json['email'],
      birthday: json['birthday'],
    );
  }

  Map<String, dynamic> toJson() => {
        'username': username,
        'sex': sex,
        'address': address,
        'name': name,
        'email': email,
        'birthday': birthday,
      };
}