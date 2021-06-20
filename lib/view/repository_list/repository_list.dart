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
  String _searchWord = 'flutter';
  final int _page = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
              controller: TextEditingController(text: _searchWord),
              decoration: InputDecoration.collapsed(
                hintText: ' Search by name',
              ),
              onChanged: (value) {
                debugPrint('input: $value');
                _searchWord = value;
              },
              cursorColor: Colors.grey[100]),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                _search();
              },
            )
          ],
        ),
        body: _buildRepositoryList(_searchWord, _page));
  }

  void _search() async {
    setState(() {});
  }

  Widget _buildRepositoryList(String searchWord, int page) {
    final _repository = GitHubRepositoryRepository.instance;

    return FutureBuilder(
      // future属性で非同期処理を書く
      future: _repository.repositories(searchWord, page),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
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
