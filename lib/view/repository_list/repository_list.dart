import 'package:flutter/material.dart';
import 'package:flutter_api_sample/domain/model/repositories.dart';
import 'package:flutter_api_sample/data/repository/github_repository_repository.dart';
import 'package:flutter_api_sample/view/common/future_error_dialog.dart';
import 'package:flutter_api_sample/view/common/loading_view.dart';

import 'components/repository_card.dart';

class RepositoryList extends StatefulWidget {
  const RepositoryList({Key? key}) : super(key: key);

  @override
  _RepositoryList createState() => _RepositoryList();
}

class _RepositoryList extends State<RepositoryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUserList('flutter', 1),
    );
  }

  Widget _buildUserList(String searchKeyword, int page) {
    final _repository = GitHubRepositoryRepository.instance;

    return FutureBuilder(
      // future属性で非同期処理を書く
      future: _repository.repositories(searchKeyword, page),
      builder: (context, snapshot) {
        // エラーが発生した場合はエラーダイアログを表示する
        if (snapshot.hasError) {
          debugPrint('エラーあり');
          return buildErrorDialog(context, snapshot.error);
        }

        // 取得完了するまで別のWidgetを表示する
        if (!snapshot.hasData) {
          debugPrint('ロード中');
          return buildLoadingView;
        }

        // 取得できたらそれにしたがってViewを表示する
        debugPrint('ロード完了');
        Repositories data = snapshot.data as Repositories;

        return ListView.builder(
            itemBuilder: (context, index) {
              final item = data.items[index];
              return RepositoryCard(
                item,
                () {
                  print('リポジトリタップ index: $index');
                },
              );
            },
            itemCount: data.items.length);
      },
    );
  }
}
