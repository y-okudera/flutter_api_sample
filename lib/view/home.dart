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

  // 表示する画面タイトルの一覧
  static List<String> _pageTitleList = [
    'GitHub Users',
    'GitHub Repositories',
  ];

  // 表示するWidgetの一覧
  static List<Widget> _pageList = [
    UserList(),
    RepositoryList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitleList[_selectedIndex]),
      ),
      body: _pageList[_selectedIndex],
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
