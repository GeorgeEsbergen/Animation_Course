import 'package:flutter/material.dart';

class AnimatedListEx extends StatefulWidget {
  const AnimatedListEx({super.key});

  @override
  State<AnimatedListEx> createState() => _AnimatedListExState();
}

class _AnimatedListExState extends State<AnimatedListEx> {
  final GlobalKey<AnimatedListState> _globalKey =
      GlobalKey<AnimatedListState>();

  // ignore: prefer_final_fields
  List<String> _list = [];
  void addItem() {
    setState(() {
      // ignore: prefer_interpolation_to_compose_strings
      _list.insert(0, 'Item Number' + _list.length.toString());
      _globalKey.currentState?.insertItem(0);
    });
  }

  void deleteItem(int index) {
    setState(() {
      String remove = _list[index];
      _list.removeAt(index);
      _globalKey.currentState?.removeItem(index,
          duration: const Duration(milliseconds: 300), (context, animation) {
        return ListTile(
          title: Text(remove),
          textColor: Colors.red,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
        centerTitle: true,
      ),
      body: AnimatedList(
        key: _globalKey,
        itemBuilder: (context, index, animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              color: Colors.purple.withOpacity(0.3),
              child: ListTile(
                title: Text(_list[index]),
                trailing: IconButton(
                  onPressed: () {
                    deleteItem(index);
                  },
                  icon: const Icon(Icons.delete),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}
