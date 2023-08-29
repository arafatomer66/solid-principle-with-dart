// “There should never be more than one reason for a class to change”. Each class should have only one central responsibility.

// Bad Way

// class User {
//   String name;
//   String email;

// User(this.name, this.email);
//   void saveUserToDatabase() {
//      // save user to the database
//   }
//   void showWelcomeMessage() {
//      print('Welcome, $name!');
//   }
// }


// Good Way
class User {
  String name;
  String email;

  User(this.name, this.email);
}

class UserRepository {
  void saveUserToDatabase(User user) {
    // save user to the database
  }
}

class UserView {
  void showWelcomeMessage(User user) {
    print('Welcome, ${user.name}!');
  }
}
