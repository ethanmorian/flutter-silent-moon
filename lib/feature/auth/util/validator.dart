class Validator {
  static String? validateEmail(String? email) {
    final emailRegex = RegExp(r'^[\w.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$');
    if (!emailRegex.hasMatch(email ?? '')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Please type a password';
    }
    if (password.length < 6) {
      return 'Your password should at least be 6 characters';
    }
    return null;
  }

  static String? validateName(String? name) {
    final nameRegex = RegExp(r'^[a-zA-Z\s]{1,50}$');

    if (name == null) {
      return 'Name cannot be null';
    } else if (name.isEmpty) {
      return 'Name should be at least 3 characters';
    } else if (!nameRegex.hasMatch(name)) {
      return 'Please enter a valid name';
    } else {
      return null;
    }
  }
}
