import 'package:flutter/material.dart';
import 'package:flutter_api_sample/domain/model/user.dart';
import 'package:flutter_api_sample/data/repository/github_user_repository.dart';
import 'package:flutter_api_sample/view/common/loading_view.dart';
import 'package:flutter_api_sample/view/common/future_error_dialog.dart';

import 'components/user_list_tile.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  _UserList createState() => _UserList();
}

class _UserList extends State<UserList> {
  int _since = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Users'),
      ),
      body: _buildUserList(_since),
    );
  }

  Widget _buildUserList(int since) {
    final _repository = GitHubUserRepository.instance;

    return FutureBuilder(
      // future属性で非同期処理を書く
      future: _repository.users(since),
      builder: (context, snapshot) {
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
        List<User> users = snapshot.data as List<User>;
        return ListView.separated(
            itemBuilder: (context, index) {
              final user = users[index];
              return UserListTile(user, () {
                debugPrint('ユーザーリストタップ index: $index');
              });
            },
            separatorBuilder: (context, index) => Divider(
                  color: Colors.black12,
                ),
            itemCount: users.length);
      },
    );
  }
}
