import 'package:connect/constants.dart';
import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final controller;
  final String hintText;

  const MySearchBar({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
            return SearchBar(
                controller: controller,
                padding: const MaterialStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16.0)),
                onTap: () {
                  controller.openView();
                },
                onChanged: (_) {
                  controller.openView();
                },
                leading: const Icon(
                  Icons.menu,
                ),
                trailing: const <Widget>[
                  Icon(Icons.search),
                ]);
          }, suggestionsBuilder:
                  (BuildContext context, SearchController controller) {
            return List<ListTile>.generate(
              5,
              (int index) {
                final String item = 'item $index';
                return ListTile(
                    title: Text(item),
                    onTap: () {
                      controller.closeView(item);
                    });
              },
            );
          }),
        ),
      ),
    );
  }
}
