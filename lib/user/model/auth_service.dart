import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Signup with email and password
  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        print('The email already in use');
      } else {
        print('An error occured: ${e.code}');
      }
    }
    return null;
  }

//signin with email and password
  Future<User?> signInWithEmailAndPassword(
      String email, String password) async { 
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        print('Invalid email or password');
      } else {
        print('An error occured: ${e.code}');
      }
    }
    return null;
  }

  //reset password with email
  Future resetPassword(resetemail) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: resetemail);
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

}
