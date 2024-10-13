import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FireBaseAuthInit {
  static late final FirebaseAuth auth;
  static bool shouldUseFirebaseEmulator = false;

  static initializeAuth(FirebaseApp app) async {
    auth = FirebaseAuth.instanceFor(app: app);
    if (shouldUseFirebaseEmulator) {
      await auth.useAuthEmulator('localhost', 9099);
    }
  }
}
