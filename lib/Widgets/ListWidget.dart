import 'package:flutter/material.dart';
import 'package:to_do_app_with_provider/Widgets/TileWidget.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TileWidget(),
        TileWidget(),
        TileWidget(),
      ],
    );
  }
}
