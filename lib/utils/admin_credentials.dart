
class AdminCredentials {
  AdminCredentials._();
  static const String username = "admin@spotme.com";
  static const String password = "Admin@2025";
  
  static bool isAdmin(String enteredUsername, String enteredPassword) {
    return enteredUsername.trim().toLowerCase() == username.toLowerCase() &&
        enteredPassword == password;
  }
}