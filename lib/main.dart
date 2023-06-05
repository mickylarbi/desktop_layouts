import 'package:flutter/material.dart';
import 'package:new_app/items.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 24),
          itemCount: items.length,
          itemBuilder: (context, index) {
            MapEntry<String, List> itemList = items.entries.toList()[index];

            return ExpansionTile(
              backgroundColor: Colors.grey[100],
              title: Text(itemList.key),
              childrenPadding: const EdgeInsets.symmetric(horizontal: 24),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: itemList.value
                  .map(
                    (e) => e is String
                        ? ListTile(title: Text(e))
                        : ExpansionTile(
                            backgroundColor: Colors.grey[200],
                            title: Text(e.key),
                            childrenPadding:
                                const EdgeInsets.symmetric(horizontal: 24),
                            expandedCrossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: (e.value as List<String>)
                                .map((e0) => ListTile(title: Text(e0)))
                                .toList(),
                          ),
                  )
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}
