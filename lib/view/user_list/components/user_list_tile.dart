import 'package:flutter/material.dart';
import 'package:flutter_api_sample/domain/model/user.dart';

class UserListTile extends StatefulWidget {
  final User user;
  final void Function()? onTap;
  UserListTile(this.user, this.onTap);

  @override
  _UserListTileState createState() => _UserListTileState();
}

class _UserListTileState extends State<UserListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.user.login),
      // URLを指定して非同期で画像を取得し、丸型に描画する
      leading: CircleAvatar(
        radius: 24,
        backgroundImage: NetworkImage(widget.user.avatarUrl),
      ),
      onTap: widget.onTap,
    );
  }
}
