import 'package:async/async.dart';
import '../models/user.dart';

abstract class IAuthService {
  Future<Result<User>> connectWithPhoneNumber(String phoneNumber);
  Future<Result<void>> disconnect(User user);
}
