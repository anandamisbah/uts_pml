class AuthService {
  Future<String> login(String email, String password) async {
    // Proses login (dummy)
    await Future.delayed(Duration(seconds: 2));
    return 'userId123'; // Kembalikan ID pengguna
  }

  Future<String> register(String email, String password) async {
    // Proses registrasi (dummy)
    await Future.delayed(Duration(seconds: 2));
    return 'userId123'; // Kembalikan ID pengguna
  }
}
