import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class DealPOSAuthUser {
  DealPOSAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<DealPOSAuthUser> dealPOSAuthUserSubject =
    BehaviorSubject.seeded(DealPOSAuthUser(loggedIn: false));
Stream<DealPOSAuthUser> dealPOSAuthUserStream() => dealPOSAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
