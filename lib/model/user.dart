// ignore_for_file: unnecessary_this

// class User {
//   late int id;
//   late String _name;
//   late String _username;
//   late String _password;

//   User(this._name, this._username, this._password);

//   User.map(dynamic obj) {
//     this._name = obj['name'];
//     this._username = obj['username'];
//     this._password = obj['password'];
//   }

//   String get name => _name;
//   String get username => _username;
//   String get password => _password;

//   Map<String, dynamic> toMap() {
//     var map = <String, dynamic>{};

//     map['name'] = _name;
//     map['username'] = _username;
//     map['password'] = _password;
//     return map;
//   }

//   void setUserId(int id) {
//     this.id = id;
//   }
// }
class User {
  int id;
  String name;
  String username;
  String password;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.password,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      name: map['name'],
      username: map['username'],
      password: map['password'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'password': password,
    };
  }
}
