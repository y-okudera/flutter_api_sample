import 'package:flutter/material.dart';

class SearchableAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final String defaultSearchWord;
  final String searchHintText;
  final void Function(String) doSearch;

  SearchableAppBar(
      this.title, this.defaultSearchWord, this.searchHintText, this.doSearch)
      : super();

  @override
  _SearchableAppBarState createState() => _SearchableAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(50);
}

class _SearchableAppBarState extends State<SearchableAppBar> {
  late String _title = widget.title;
  late String _searchHintText = widget.searchHintText;
  late void Function(String) _doSearch = widget.doSearch;

  late String _searchWord = widget.defaultSearchWord;
  bool _isEditing = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: _buildAppBarTitle(_title, _searchHintText),
      actions: [
        IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                // 編集状態で検索ボタンを押されたら、検索を実行する
                if (_isEditing) {
                  _doSearch(_searchWord);
                }
                _isEditing = !_isEditing;
              });
            }),
      ],
    );
  }

  Widget _buildAppBarTitle(String title, String searchHintText) {
    if (_isEditing) {
      return TextField(
          controller: TextEditingController(text: _searchWord),
          decoration: InputDecoration.collapsed(
            hintText: searchHintText,
          ),
          style: TextStyle(color: Colors.grey[200]),
          onChanged: (value) {
            _searchWord = value;
          },
          cursorColor: Colors.grey[200]);
    }
    return Text(title);
  }
}
