// user_data.dart

class UserData {
  static final UserData _instance = UserData._internal();

  factory UserData() {
    return _instance;
  }

  UserData._internal();

  final Map<String, String> _users = {}; // email -> password

  bool registerUser(String email, String password) {
    if (_users.containsKey(email)) return false; // user already exists
    _users[email] = password;
    return true;
  }

  bool loginUser(String email, String password) {
    return _users[email] == password;
  }

  logoutUser() {}
}
