import 'package:flutter/material.dart';

void main() {
  runApp(const Search_Bar());
}

class Search_Bar extends StatefulWidget {
  const Search_Bar({super.key});

  @override
  State<Search_Bar> createState() => _Search_BarState();
}

class _Search_BarState extends State<Search_Bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 10,
          child: Padding(
            padding: const EdgeInsets.all(10),
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
                leading: const Icon(Icons.search),
              );
            }, suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
              List<String> suggestions = [
                'Safety',
                'Health and Care',
                'Financial',
                'Civics',
                'Legal'
              ];
              return suggestions.map((String item) {
                return ListTile(
                  title: Text(item),
                  onTap: () {
                    setState(() {
                      controller.closeView(item);
                    });
                  },
                );
              });
            }),
          ),
        ),
      ]),
    );
  }
}
