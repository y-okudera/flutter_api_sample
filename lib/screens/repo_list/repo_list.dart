import 'package:flutter/material.dart';
import 'package:flutter_api_sample/domain/models/repo_items.dart';
import 'package:flutter_api_sample/data/repository/github_repo_repository.dart';
import 'package:flutter_api_sample/widgets/future_error_dialog/future_error_dialog.dart';
import 'package:flutter_api_sample/widgets/loading_view/loading_view.dart';
import 'package:flutter_api_sample/widgets/searchable_app_bar/searchable_app_bar.dart';
import 'package:flutter_api_sample/widgets/web_view/web_view.dart';
import 'package:flutter_api_sample/screens/repo_list/components/repo_card.dart';

class RepoList extends StatefulWidget {
  const RepoList({Key? key}) : super(key: key);

  @override
  _RepoListState createState() => _RepoListState();
}

class _RepoListState extends State<RepoList> {
  String _searchWord = 'flutter';
  final int _page = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SearchableAppBar(
            'GitHub Repositories', _searchWord, ' Search by name', (value) {
          _searchWord = value;
          // do search
          setState(() {});
        }),
        body: _buildRepoList(_searchWord, _page));
  }

  Widget _buildRepoList(String searchWord, int page) {
    final _repository = GitHubRepoRepository.instance;

    return FutureBuilder(
      // future属性で非同期処理を書く
      future: _repository.repositories(searchWord, page),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            // 取得できたらそれにしたがってViewを表示する
            debugPrint('ロード完了');
            RepoItems data = snapshot.data as RepoItems;

            return ListView.builder(
                itemBuilder: (context, index) {
                  final item = data.items[index];
                  return RepoCard(
                    item,
                    () {
                      debugPrint('リポジトリタップ index: $index url: ${item.htmlUrl}');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WebViewScreen(item.htmlUrl),
                          ));
                    },
                  );
                },
                itemCount: data.items.length);
          } else {
            // エラーが発生した場合はエラーダイアログを表示する
            if (snapshot.hasError) {
              debugPrint('エラーあり');
              return buildErrorDialog(context, snapshot.error);
            }
          }
        } else {
          // 取得完了するまで別のWidgetを表示する
          if (!snapshot.hasData) {
            debugPrint('ロード中（初回）');
            return buildLoadingView;
          }
        }
        debugPrint('ロード中（非初回）');
        // 取得完了するまで別のWidgetを表示する
        return buildLoadingView;
      },
    );
  }
}
