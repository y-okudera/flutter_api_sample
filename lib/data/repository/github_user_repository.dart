import 'package:flutter_api_sample/data/remote/github_user_remote_data_source.dart';
import 'package:flutter_api_sample/domain/models/user.dart';

class GitHubUserRepository {
  GitHubUserRepository._();

  static final instance = GitHubUserRepository._();

  Future<List<User>> users(int since) async {
    try {
      return GitHubUserRemoteDataSource.instance.users(since);
    } catch (e) {
      rethrow;
    }
  }
}
