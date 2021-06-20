import 'package:flutter/material.dart';
import 'package:flutter_api_sample/domain/model/repository_item.dart';

class RepositoryCard extends StatefulWidget {
  final RepositoryItem item;
  final void Function()? onTap;
  RepositoryCard(this.item, this.onTap);

  @override
  _RepositoryCardState createState() => _RepositoryCardState();
}

class _RepositoryCardState extends State<RepositoryCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: new InkWell(
        onTap: widget.onTap,
        child: Padding(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  widget.item.fullName,
                  style: TextStyle(fontSize: 17.0, color: Colors.green),
                ),
                // 2行を超える場合は三点リーダーを表示する
                subtitle: Text(widget.item.description ?? '',
                    style: TextStyle(fontSize: 14.0),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis),
              )
            ],
          ),
          padding: EdgeInsets.all(8),
        ),
      ),
    );
  }
}
