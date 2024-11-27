class StudentLoginData {
  String email;
  String password;

  StudentLoginData({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
