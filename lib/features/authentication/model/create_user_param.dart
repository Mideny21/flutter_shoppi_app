class CreateUserParam {
  String? name;
  String? password;
  String? email;
  String? address;

  CreateUserParam({this.name, this.password, this.email, this.address});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['password'] = this.password;
    data['address'] = this.address;
    data['email'] = this.email;

    return data;
  }
}
