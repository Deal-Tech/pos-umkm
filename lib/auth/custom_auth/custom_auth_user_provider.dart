import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class CahrurPOSUMKMAuthUser {
  CahrurPOSUMKMAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<CahrurPOSUMKMAuthUser> cahrurPOSUMKMAuthUserSubject =
    BehaviorSubject.seeded(CahrurPOSUMKMAuthUser(loggedIn: false));
Stream<CahrurPOSUMKMAuthUser> cahrurPOSUMKMAuthUserStream() =>
    cahrurPOSUMKMAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
