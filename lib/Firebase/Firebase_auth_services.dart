import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FirebaseAuthServices {
  Future<User?> signupWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Send email verification

      Fluttertoast.showToast(msg: "Registered Successfully");

      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
            msg:
                "User already exists. Please sign in or use a different email.");
      } else if (e.code == 'invalid-email') {
        Fluttertoast.showToast(msg: "Invalid email address.");
      } else if (e.code == 'weak-password') {
        Fluttertoast.showToast(
            msg: "Weak password. Please choose a stronger password.");
      } else {
        Fluttertoast.showToast(
            msg:
                "Signup failed. An unexpected error occurred. Please try again.");
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: "An unexpected error occurred. Please try again.");
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        Fluttertoast.showToast(
            msg: "Invalid email or password. Please try again.");
      } else if (e.code == 'invalid-email') {
        Fluttertoast.showToast(msg: "Invalid email address.");
      } else {
        Fluttertoast.showToast(
            msg:
                "Sign in failed. An unexpected error occurred. Please try again.");
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: "An unexpected error occurred. Check your internet connection");
    }
    return null;
  }
}
