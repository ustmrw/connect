import 'package:flutter/material.dart';
import 'package:connect/constants.dart';
import '../util/my_card.dart';

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
                              // Expanded(
                              //   child: ListView.builder(
                              //     physics: BouncingScrollPhysics(),
                              //     itemCount: 6,
                              //     itemBuilder: (context, index) {
                              //       return const MyTile();
                              //     },
                              //   ),
                              // ),
                              MyCard(),
                            ],
                          ),
                        ),
                      ])),
            )));
  }
}
