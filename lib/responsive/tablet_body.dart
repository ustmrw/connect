import 'package:connect/responsive/tool_pages/health_page.dart';
import 'package:connect/responsive/tool_pages/id_page.dart';
import 'package:connect/responsive/tool_pages/money_page.dart';
import 'package:connect/responsive/tool_pages/police_page.dart';
import 'package:connect/responsive/tool_pages/vote_page.dart';
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
                              Text(
                                '\nNOTIFICATIONS\n',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: 6,
                                  itemBuilder: (context, index) {
                                    return const MyTile();
                                  },
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                height: 150,
                                child: ListView(
                                  padding: EdgeInsets.all(8),
                                  // This next line does the trick.
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Card(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => IDPage(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.red,
                                          ),
                                          child: Hero(
                                            tag: 'ID',
                                            child: Center(
                                              child: Text(
                                                'ID',
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Card(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  HealthPage(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.blue,
                                          ),
                                          child: Hero(
                                            tag: 'Health',
                                            child: Center(
                                              child: Text(
                                                'Health',
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Card(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => MoneyPage(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.green,
                                          ),
                                          child: Hero(
                                            tag: 'Money',
                                            child: Center(
                                              child: Text(
                                                'Money',
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Card(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => VotePage(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.yellow,
                                          ),
                                          child: Hero(
                                            tag: 'Vote',
                                            child: Center(
                                              child: Text(
                                                'Vote',
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Card(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PolicePage(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.orange,
                                          ),
                                          child: Hero(
                                            tag: 'Police',
                                            child: Center(
                                              child: Text(
                                                'Police',
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ])),
            )));
  }
}
