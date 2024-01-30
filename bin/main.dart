import "package:p11/class_mock_database_repository.dart";
import "package:p11/class_user.dart";

class MockDatabaseRepository {
  // private attribute s
  //! Warum schlägt mir Dart vor, folg. Liste FINAL zu machen?
  final List<User> _users = [
    User("Kai", "pass123", "kai@example.com", 1, 25),
    User("Angi", "pass456", "angi@example.com", 2, 30),
    User("David", "pass789", "david@example.com", 3, 28),
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
}

void main() {
  // create instance of DatabaseRepository
  MockDatabaseRepository mockDatabaseRepository = MockDatabaseRepository();

  // get all users
  List<User> users = mockDatabaseRepository.getUsers();
  for (User user in users) {
    print("${user.username}, ${user.email}, ${user.age} years old");
    user.signIn();
    user.logIn();
  }
}
