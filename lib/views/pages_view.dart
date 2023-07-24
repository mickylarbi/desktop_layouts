import 'package:flutter/material.dart';
import 'package:new_app/items.dart' as list;

class PagesView extends StatelessWidget {
  final MapEntry<String, dynamic>? items;
  const PagesView({super.key, this.items});

  @override
  Widget build(BuildContext context) {
    List pageItems = items?.value ?? list.items.entries.toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(items != null ? items!.key : 'Home'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          height: 0,
          indent: 8,
          endIndent: 8,
        ),
        itemCount: pageItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(pageItems[index] is String
                ? pageItems[index]
                : pageItems[index].key),
            trailing: pageItems[index] is String
                ? null
                : const Icon(Icons.chevron_right),
            onTap: pageItems[index] is String
                ? null
                : () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PagesView(items: pageItems[index])),
                    );
                  },
          );
        },
      ),
    );
  }
}
