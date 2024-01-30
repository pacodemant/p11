import 'package:p11/class_mock_database_repository.dart';
import 'package:p11/class_user.dart';

class User {
  String username;
  String password;
  String email;
  int id;
  int age;

  User(this.username, this.password, this.email, this.id, this.age);

  // Methoden: SignIn und LogIn
  void signIn() {
    print('Anmeldung $username.');
  }

  void logIn() {
    print('login $username.');
  }
}



class MockDatabaseRepository {
  // private attribute
  //! Warum schlägt mir Dart vor, folg. Liste FINAL zu machen?
  final List<User> _users = [
    User('Kai', 'pass123', 'kai@example.com', 1, 25),
    User('Angi', 'pass456', 'angi@example.com', 2, 30),
    User('David', 'pass789', 'david@example.com', 3, 28),
  ];

  // constructor
  MockDatabaseRepository();

  // access methods / functions
  List<User> getUsers() {
    return _users;
  }

  void addUser(User user) {
    _users.add(user);
  }

  void deleteUser(User user) {
    _users.remove(user);
  }

  // Main method
}

void main() {
  // create instance of DatabaseRepository
  MockDatabaseRepository mockDatabaseRepository = MockDatabaseRepository();

  // get all users
  List<User> users = mockDatabaseRepository.getUsers();
  for (User user in users) {
    print('${user.username}, ${user.email}, ${user.age} years old');
    user.signIn();
    user.logIn();
  }
}
