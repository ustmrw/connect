import 'package:flutter/material.dart';
import 'package:connect/constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  final GlobalKey<_TabletScaffoldState> _refreshIndicatorKey =
      GlobalKey<_TabletScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        appBar: myAppBar,
        body: RefreshIndicator(
            key: _refreshIndicatorKey,
            color: Colors.white,
            backgroundColor: Colors.black,
            strokeWidth: 2.0,
            onRefresh: () async {
              // Replace this delay with the code to be executed during refresh
              // and return a Future when code finishes execution.
              return Future<void>.delayed(const Duration(seconds: 2));
            },
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // open drawer
                      myDrawer,

                      // first half of page
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            // first 4 boxes in grid
                            AspectRatio(
                              aspectRatio: 4,
                              child: SizedBox(
                                width: double.infinity,
                                child: GridView.builder(
                                  itemCount: 4,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 4),
                                  itemBuilder: (context, index) {
                                    return const MyBox();
                                  },
                                ),
                              ),
                            ),

                            // list of previous days
                            Expanded(
                              child: ListView.builder(
                                itemCount: 6,
                                itemBuilder: (context, index) {
                                  return const MyTile();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]))));
  }
}
