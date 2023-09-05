import 'package:connect/util/my_card.dart';
import 'package:connect/util/my_notifications.dart';
import 'package:flutter/material.dart';

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
    final size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.4;
    return SafeArea(child: Scaffold(
      body: OrientationBuilder(builder: (context, orientation) {
        return RefreshIndicator(
          key: _refreshIndicatorKey,
          color: Colors.white,
          backgroundColor: Colors.black,
          strokeWidth: 2.0,
          child: ListView(children: [
            MyNotifications(),
            SizedBox(height: categoryHeight),
            MyCard(),
          ]),
          onRefresh: () async {
            // Replace delay with Future
            return Future<void>.delayed(
              const Duration(milliseconds: 200),
            );
          },
        );
      }),
    ));
  }
}
