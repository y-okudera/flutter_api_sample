import 'package:flutter/material.dart';
import 'package:flutter_api_sample/common/app_theme.dart';
import 'package:flutter_api_sample/domain/model/user.dart';
import 'package:flutter_api_sample/view/home.dart';

void main() {
  // freezedのデバッグ
  final user1 = User(
      login: 'mojombo',
      id: 1,
      avatarUrl: 'https://avatars.githubusercontent.com/u/1?v=4',
      htmlUrl: 'https://github.com/mojombo');
  final user2 = user1.copyWith(login: 'defunkt', id: 2);
  debugPrint('user1 = $user1');
  debugPrint('user2 = $user2');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.instance.getTheme(),
      home: Home(),
    );
  }
}
