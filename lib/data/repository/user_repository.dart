import 'package:flutter_api_sample/data/remote/user_remote_data_store.dart';
import 'package:flutter_api_sample/domain/model/user.dart';

class UserRepository {
  UserRepository._();

  static final instance = UserRepository._();

  Future<List<User>> users(int since) async {
    return UserRemoteDataStore.instance.users(since);
  }
}
