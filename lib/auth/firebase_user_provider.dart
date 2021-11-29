import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TrysFirebaseUser {
  TrysFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

TrysFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TrysFirebaseUser> trysFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<TrysFirebaseUser>((user) => currentUser = TrysFirebaseUser(user));
