import 'package:async/async.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

import '../models/user.dart';
import 'auth_service_contract.dart';
import '../helper/api_firebase.dart';

class FirebaseApiAuthService implements IAuthService {
  final firebase.FirebaseAuth _instance;

  const FirebaseApiAuthService(this._instance);

  @override
  Future<Result<User>> connectWithPhoneNumber(String phoneNumber) async {
    late Result<User> result;
    try {
      await _instance.verifyPhoneNumber(
          phoneNumber: phoneNumber,
          verificationCompleted:
              (firebase.PhoneAuthCredential credential) async {
            final firebase.UserCredential userCredential =
                await _instance.signInWithCredential(credential);
            final user = userCredential.user;
            assert(user != null);
            result = Result.value(user!.toModel());
          },
          verificationFailed: (firebase.FirebaseAuthException error) {
            if (error.code == 'invalid-phone-number')
              result = Result.error('Invalid Phone Number');
          },
          codeSent: (_, __) {},
          codeAutoRetrievalTimeout: (_) {});
    } catch (e) {
      print('''
     ------ Error in FireBase Phone Number Authentication ------
      ${e.toString()}
      ''');
      result = Result.error('Unexpected Error');
    }
    return result;
  }

  @override
  Future<Result<void>> disconnect(User user) async {
    // TODO: implement disconnect
    throw UnimplementedError();
  }
}
