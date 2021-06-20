import 'package:flutter_api_sample/data/remote/repository_remote_data_store.dart';
import 'package:flutter_api_sample/domain/model/repositories.dart';

class GitHubRepositoryRepository {
  GitHubRepositoryRepository._();

  static final instance = GitHubRepositoryRepository._();

  Future<Repositories> repositories(String searchKeyword, int page) async {
    try {
      return RepositoryRemoteDataStore.instance
          .repositories(searchKeyword, page);
    } catch (e) {
      rethrow;
    }
  }
}
