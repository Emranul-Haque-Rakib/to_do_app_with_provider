import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.00),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.00),
            topRight: Radius.circular(50.00),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child:  Text(
              "Add Task",
              style: TextStyle(
                fontSize: 30.00,
                color: Colors.lightBlueAccent,
              ),
            ),
          ),
          const TextField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),

          ElevatedButton(onPressed: (){},
              child: const Text(
                'Add',
              ))
        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
