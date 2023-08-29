// “Depend upon abstractions, [not] concretions”

// Bad way

// class User {
//   String name;
//   // Other propertise
//   User(this.name);
// }

// class MySQLDatabase {
//   void saveUser(User user) {
//     print('Saving ${user.name} to MySQL database...');
//     // Actual implementation...
//   }
// }

// class UserService {
//   MySQLDatabase database;

//   UserService(this.database);
// }

// Good way

class User {
  String name;
  // Other propertise
  User(this.name);
}

abstract class Database {
  void saveUser(User user);
}

class MySQLDatabase implements Database {
  void saveUser(User user) {
    print('Saving ${user.name} to MySQL database...');
    // Actual implementation...
  }
}

class PostgreSQLDatabase implements Database {
  void saveUser(User user) {
    print('Saving ${user.name} to PostgreSQL database...');
    // Actual implementation...
  }
}

class UserService {
  Database database; // dependency injection
  UserService(this.database);

  void saveUser(User user) {
    database.saveUser(user);
  }
}
