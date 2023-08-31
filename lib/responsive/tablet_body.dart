import 'package:flutter/material.dart';
import 'package:connect/constants.dart';
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
              // Replace delay with Future
              return Future<void>.delayed(const Duration(seconds: 2));
            },
            child: SafeArea(
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
                              Container(
                                margin: const EdgeInsets.all(10),
                                height: 150,
                                child: ListView(
                                  padding: EdgeInsets.all(8),
                                  // This next line does the trick.
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'ID',
                                        style: TextStyle(fontSize: 30),
                                      ),
                                      alignment: Alignment.center,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.red,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      child: Text(
                                        'Health',
                                        style: TextStyle(fontSize: 30),
                                      ),
                                      alignment: Alignment.center,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      child: Text(
                                        'Money',
                                        style: TextStyle(fontSize: 30),
                                      ),
                                      alignment: Alignment.center,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.green,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      child: Text(
                                        'Vote',
                                        style: TextStyle(fontSize: 30),
                                      ),
                                      alignment: Alignment.center,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      child: Text(
                                        'Police',
                                        style: TextStyle(fontSize: 30),
                                      ),
                                      alignment: Alignment.center,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Text('Notifications'),
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
                      ])),
            )));
  }
}
