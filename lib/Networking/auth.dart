// revise snapshot collection database firestore
// register and login in
import 'package:firebase_auth/firebase_auth.dart';

class AuthManager {
  var _auth = FirebaseAuth.instance;

  dynamic SignInAnonmy() async {
    final userCredential = await FirebaseAuth.instance.signInAnonymously();
    print(userCredential);
    return userCredential;
  }

  Stream<User?> whatToShow() {
    Stream<User?> x = _auth.authStateChanges();
    return x;
  }
}
