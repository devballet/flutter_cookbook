import 'package:flutter/material.dart';

class reorderableList extends StatefulWidget {
  reorderableList({Key key}) : super(key: key);

  @override
  _reorderableListState createState() => _reorderableListState();
}

class _reorderableListState extends State<reorderableList> {
  final List<String> items = ["item1", "item2", "item3", "item4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is reorderableListView"),
      ),
      body: ReorderableListView(
        header: Container(
          padding: const EdgeInsets.all(25),
          color: Colors.amber,
          child: const Text("reorderable item List"),
        ),
        children: items
            .map(
              (item) => Container(
                key: ValueKey(item),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(width: 1, color: Colors.pink),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(25),
                  leading: Icon(Icons.star),
                  trailing: Icon(Icons.drag_handle_outlined),
                  title: Text(
                    item,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
            .toList(),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final ele = items.removeAt(oldIndex);
            items.insert(newIndex, ele);
          });
        },
      ),
    );
  }
}
