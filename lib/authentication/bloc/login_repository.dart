
class LoginRepository {
  Future<void> login() async{
    print('Attempting Login');
  Future.delayed(Duration(seconds: 3));
    print('Logged in');
  }
}