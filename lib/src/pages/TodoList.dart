import 'package:flutter/material.dart';

enum extraAction { edit, delete }

class ListWidget extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<ListWidget> {
  List<Map<String, dynamic>> listArr = [
    {'name': 'check list item 01', 'value': true},
    {'name': 'check list item 02', 'value': true},
    {'name': 'check list item 03', 'value': false},
    {'name': 'check list item 04', 'value': false},
    {'name': 'check list item 05', 'value': true},
    {'name': 'check list item 06', 'value': false},
  ];

  void onChange(val, index) {
    setState(() {
      listArr[index - 1]['value'] = val;
    });
  }

  void addList() {
    setState(() {
      listArr.addAll([
        {'name': 'new check list item', 'value': false}
      ]);
    });
  }

  void editList(val, index, context, name) {
    bool isEdit = val.index == 0;
    if (isEdit) {
      Navigator.push<void>(
          context,
          MaterialPageRoute(
              builder: (context) => FullScreenDialog(
                    save: saveNewItem,
                    index: index,
                    name: name,
                  ),
              fullscreenDialog: true));
    } else {
      setState(() {
        listArr.removeAt(index - 1);
      });
    }
  }

  void saveNewItem(val, index) {
    setState(() {
      listArr[index - 1]['name'] = val;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TodoList'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: [
                for (int index = 1; index <= listArr.length; index++)
                  ListTile(
                    leading: Checkbox(
                        value: listArr[index - 1]['value'],
                        onChanged: (val) {
                          onChange(val, index);
                        }),
                    title: Text('${listArr[index - 1]['name']}',
                        style: TextStyle(
                            color: listArr[index - 1]['value']
                                ? Colors.grey.shade400
                                : Theme.of(context).textTheme.bodyText1.color,
                            decoration: listArr[index - 1]['value']
                                ? TextDecoration.lineThrough
                                : null)),
                    trailing: PopupMenuButton<extraAction>(
                      onSelected: (val) {
                        editList(
                            val, index, context, listArr[index - 1]['name']);
                      },
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuItem<extraAction>>[
                        PopupMenuItem<extraAction>(
                          value: extraAction.edit,
                          child: Text('Edit'),
                        ),
                        PopupMenuItem<extraAction>(
                          value: extraAction.delete,
                          child: Text('Delete'),
                        ),
                      ],
                    ),
                  )
              ],
            ),
          ),
          MaterialBanner(
            content: Text(
                '共 ${listArr.length} 個清單，已完成 ${listArr.where((obj) => obj['value']).length} 個'),
            actions: <Widget>[null],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: addList, child: const Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class FullScreenDialog extends StatefulWidget {
  FullScreenDialog({this.save, this.name, this.index});
  final Function save;
  final int index;
  final String name;
  @override
  _FullScreenDialogState createState() => _FullScreenDialogState();
}

class _FullScreenDialogState extends State<FullScreenDialog> {
  final itemController = TextEditingController();

  @override
  void initState() {
    super.initState();
    itemController.text = widget.name;
  }

  void dispose() {
    itemController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('add a todo'),
        actions: <Widget>[
          FlatButton(
              onPressed: () {
                widget.save(itemController.text, widget.index);
              },
              child: Text('儲存'))
        ],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: TextField(
            controller: itemController,
            obscureText: false,
            decoration:
                InputDecoration(labelText: 'label', hintText: '請輸入項目名稱'),
          ),
        ),
      ),
    );
  }
}

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListWidget();
  }
}
