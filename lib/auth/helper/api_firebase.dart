import 'package:firebase_auth/firebase_auth.dart' as firebase;
import '../models/user.dart';

extension XFirebaseUser on firebase.User {
  User toModel() =>
    
        User( phoneNumber: this.phoneNumber!);
  
}
