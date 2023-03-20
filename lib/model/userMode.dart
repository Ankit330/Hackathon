class UserModel {
  String? name;
  String? number;

  UserModel({required this.name, required this.number});

  UserModel.fromMap(Map<String, dynamic> map) {
    name = map["name"];
    number = map["number"];
  }

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "number": number,
    };
  }
}
