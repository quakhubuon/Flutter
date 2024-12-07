// controllers/auth_controller.dart
import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Stream cung cấp trạng thái người dùng hiện tại
  Stream<User?> get user {
    return _auth.authStateChanges();
  }

  // Đăng nhập với email và password
  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return result.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Đăng ký với email và password
  Future<User?> registerWithEmailAndPassword(String email, String password, String confirmPassword) async {
    // Kiểm tra mật khẩu
    if (password != confirmPassword) {
      print('Passwords do not match');
      return null;
    }
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return result.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Đăng xuất
  Future<void> signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
