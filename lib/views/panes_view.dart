import 'package:flutter/material.dart';
import 'package:new_app/items.dart';

class PanesView extends StatefulWidget {
  const PanesView({super.key});

  @override
  State<PanesView> createState() => _PanesViewState();
}

class _PanesViewState extends State<PanesView> {
  int? selectedFirstPaneIndex;
  int? selectedSecondPaneIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Row(
        children: [
          firstPane(),
          const VerticalDivider(width: 0),
          secondPane(),
          const VerticalDivider(width: 0),
          thirdPane(),
        ],
      ),
    );
  }

  firstPane() {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          height: 0,
          indent: 8,
          endIndent: 8,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          MapEntry mapEntry = items.entries.toList()[index];

          return ListTile(
            title: Text(mapEntry.key),
            selected: index == selectedFirstPaneIndex,
            selectedTileColor: Colors.grey[200],
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              selectedFirstPaneIndex = index;
              selectedSecondPaneIndex = null;
              setState(() {});
            },
          );
        },
      ),
    );
  }

  secondPane() {
    List currentList = [];
    if (selectedFirstPaneIndex != null) {
      currentList = items.entries.toList()[selectedFirstPaneIndex!].value;
    }

    return Expanded(
      child: selectedFirstPaneIndex == null
          ? const Center(child: Icon(Icons.history, color: Colors.grey))
          : ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                height: 0,
                indent: 8,
                endIndent: 8,
              ),
              itemCount: currentList.length,
              itemBuilder: (context, index) {
                dynamic currentItem = currentList[index];

                return ListTile(
                  title: Text(
                      currentItem is String ? currentItem : currentItem.key),
                  selected: index == selectedSecondPaneIndex,
                  selectedTileColor: Colors.grey[200],
                  trailing: currentItem is String
                      ? null
                      : const Icon(Icons.chevron_right),
                  onTap: currentItem is String
                      ? null
                      : () {
                          selectedSecondPaneIndex = index;
                          setState(() {});

                          print(selectedFirstPaneIndex);
                          print(selectedSecondPaneIndex);
                        },
                );
              },
            ),
    );
  }

  thirdPane() {
    List currentList = [];
    if (selectedFirstPaneIndex != null && selectedSecondPaneIndex != null) {
      currentList = items.entries
          .toList()[selectedFirstPaneIndex!]
          .value[selectedSecondPaneIndex!]
          .value;
    }

    return Expanded(
      child: selectedFirstPaneIndex != null && selectedSecondPaneIndex != null
          ? ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                height: 0,
                indent: 8,
                endIndent: 8,
              ),
              itemCount: currentList.length,
              itemBuilder: (context, index) {
                dynamic currentItem = currentList[index];

                return ListTile(
                  title: Text(
                      currentItem is String ? currentItem : currentItem.key),
                );
              },
            )
          : const Center(child: Icon(Icons.history, color: Colors.grey)),
    );
  }
}
