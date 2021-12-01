import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CapstoneFirebaseUser {
  CapstoneFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

CapstoneFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CapstoneFirebaseUser> capstoneFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CapstoneFirebaseUser>(
            (user) => currentUser = CapstoneFirebaseUser(user));
