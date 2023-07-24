import 'package:flutter/material.dart';
import 'package:new_app/views/expandable_view.dart';
import 'package:new_app/views/pages_view.dart';
import 'package:new_app/views/panes_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ValueNotifier<ViewMode> viewModeNotifier =
      ValueNotifier<ViewMode>(ViewMode.panes);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ValueListenableBuilder(
        valueListenable: viewModeNotifier,
        builder: (BuildContext context, dynamic value, Widget? child) {
          if (value == ViewMode.expandable) {
            return const ExpandableView();
          }

          if (value == ViewMode.pages) {
            return const PagesView();
          }

          if (value == ViewMode.panes) {
            return const PanesView();
          }

          return Container();
        },
      ),
    );
  }

  @override
  void dispose() {
    viewModeNotifier.dispose();

    super.dispose();
  }
}

enum ViewMode { expandable, pages, panes, dropdown }
