import 'package:flutter/material.dart';

class TileWidget extends StatefulWidget {
  @override
  State<TileWidget> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<TileWidget> {
  bool isCheacked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text("new Task", style: TextStyle(decoration:  TextDecoration.lineThrough),),
      trailing: TaskCheckBox(isCheacked),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  TaskCheckBox(this.checkboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: (bool? value) {},
    );
  }
}
