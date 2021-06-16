import 'package:flutter/material.dart';
import 'package:flutter_api_sample/common/app_theme.dart';
import 'package:flutter_api_sample/domain/model/user.dart';
import 'package:flutter_api_sample/data/repository/user_repository.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Users'),
      ),
      body: _buildUserList(0),
    );
  }

  Widget _buildUserList(int since) {
    final _repository = UserRepository.instance;

    return FutureBuilder(
      // future属性で非同期処理を書く
      future: _repository.users(since),
      builder: (context, snapshot) {
        // 取得完了するまで別のWidgetを表示する
        if (!snapshot.hasData) {
          debugPrint('ロード中');
          return _buildLoadingView;
        }

        if (snapshot.hasError) {
          debugPrint('エラーあり');
          return _buildErrorView(snapshot.error.toString());
        }

        debugPrint('ロード完了');
        // 取得できたらそれにしたがってViewを表示する
        List<User> users = snapshot.data as List<User>;
        debugPrint('usrs[0]: ${users[0]}');
        return ListView.separated(
            itemBuilder: (context, index) {
              final user = users[index];
              return ListTile(
                  title: Text(user.login),
                  subtitle: Text('User id: ${user.id}'),
                  // URLを指定して非同期で画像を取得し、丸型に描画する
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(user.avatarUrl),
                  ));
            },
            separatorBuilder: (context, index) => Divider(
                  color: Colors.black12,
                ),
            itemCount: users.length);
      },
    );
  }

  Widget get _buildLoadingView {
    return Center(
        child: CircularProgressIndicator(backgroundColor: Colors.black12));
  }

  Widget _buildErrorView(String errorMessage) {
    return Center(child: Text(errorMessage, style: AppTheme.errorMessageStyle));
  }
}
