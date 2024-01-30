class User {
  String username;
  String password;
  String email;
  int id;
  int age;

  User(this.username, this.password, this.email, this.id, this.age);

  // Methoden: SignIn und LogIn
  void signIn() {
    print("Anmeldung $username.");
  }

  void logIn() {
    print("login $username.");
  }
}