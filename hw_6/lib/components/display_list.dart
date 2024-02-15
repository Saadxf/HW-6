import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hw_6/data/Item_manager.dart';
import 'item_container.dart';

class DisplayList extends StatefulWidget {
  const DisplayList({Key? key}) : super(key: key);

  @override
  State<DisplayList> createState() => _DisplayListState();
}

class _DisplayListState extends State<DisplayList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 300,
        height: 300,
        child: Center(
         child: GetIt.I.get<ItemManager>().items.isEmpty
          ? const Text('No items available')
          : ListView.builder(
              itemCount: GetIt.I.get<ItemManager>().items.length,
              itemBuilder: (context, index) {
                final item = GetIt.I.get<ItemManager>().items[index];
                return ItemContainer(
                  name: item.name ?? '',
                  email: item.email ?? '',
                );
              },
            ),

        ),
      ),
    );
  }
}
