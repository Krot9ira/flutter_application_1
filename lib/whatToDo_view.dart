import 'package:flutter/material.dart';

import 'whatToDo_data.dart';

// лист на котором находится список
class WhatToDoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("To Do List"),
        ),
        body: Container(
            child: Row(
          children: [
            Container(
              width: 100,
              color: Colors.brown,
              child: WhatToDoList(item),
            ),
            SizedBox(
              height: 1000,
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Сюда пишем результат',
                    border: OutlineInputBorder()),
              ),
            )
          ],
        )));
  }
}

// список создается тут
class WhatToDoList extends StatelessWidget {
  final List<WhatToDo> _item;

  WhatToDoList(this._item);

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: _buildContactList());
  }

  List<_ContactListItem> _buildContactList() {
    return _item.map((contact) => _ContactListItem(contact)).toList();
  }
}

// тут создается элемент списка
class _ContactListItem extends ListTile {
  _ContactListItem(WhatToDo item)
      : super(
          title: Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Text(
              item.date,
            ),
          ),
          subtitle: Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Text(
              item.whatToDO,
            ),
          ),
        );
}
