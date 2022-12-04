import 'package:flutter/material.dart';
import 'package:to_do_app_with_provider/Widgets/ListWidget.dart';
import 'package:to_do_app_with_provider/Widgets/TaskScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(context: context, builder: (context)=>TaskScreen());
          },
          backgroundColor: Colors.lightBlueAccent,
          child: const Icon(Icons.add),
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 60.00, left: 30.00, right: 30.00, bottom: 30.00),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  CircleAvatar(
                    radius: 30.00,
                    backgroundColor: Colors.blueAccent,
                    child: Icon(
                      Icons.list,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "To DO",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "12 task",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.00),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                ),
                child: const ListWidget(),
              ),
            )
          ],
        ));

    // TODO: implement build
    throw UnimplementedError();
  }
}
