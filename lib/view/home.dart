import 'package:flutter/material.dart';
import 'package:flutter_api_sample/view/user_list/user_list.dart';
import 'package:flutter_api_sample/view/repository_list/repository_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // bottomNavigationBarのindex
  int _selectedIndex = 0;

  // 表示するWidgetの一覧
  static List<Widget> _pageList = [
    UserList(),
    RepositoryList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_people),
            label: 'Users',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories),
            label: 'Repositories',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onBottomNavigationItemTapped,
      ),
    );
  }

  /// ボトムナビゲーションのアイテムタップ時の処理
  void _onBottomNavigationItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
