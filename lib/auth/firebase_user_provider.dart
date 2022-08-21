import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CampaignFirebaseUser {
  CampaignFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CampaignFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CampaignFirebaseUser> campaignFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CampaignFirebaseUser>(
            (user) => currentUser = CampaignFirebaseUser(user));
