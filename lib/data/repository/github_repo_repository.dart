import 'package:flutter_api_sample/data/remote/github_repo_remote_data_source.dart';
import 'package:flutter_api_sample/domain/model/repo_items.dart';

class GitHubRepoRepository {
  GitHubRepoRepository._();

  static final instance = GitHubRepoRepository._();

  Future<RepoItems> repositories(String searchKeyword, int page) async {
    try {
      return GitHubRepoRemoteDataSource.instance
          .repositories(searchKeyword, page);
    } catch (e) {
      rethrow;
    }
  }
}
