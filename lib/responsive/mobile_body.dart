import 'package:connect/util/my_card.dart';
import 'package:connect/util/my_notifications.dart';
import 'package:flutter/material.dart';
import 'package:connect/constants.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  final GlobalKey<_MobileScaffoldState> _refreshIndicatorKey =
      GlobalKey<_MobileScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: myDrawer,
          body: RefreshIndicator(
            key: _refreshIndicatorKey,
            color: Colors.white,
            backgroundColor: Colors.black,
            strokeWidth: 2.0,
            onRefresh: () async {
              // Replace delay with Future
              return Future<void>.delayed(const Duration(seconds: 2));
            },
            child: Column(
              children: [
                MyNotifications(),
                MyCard(),
              ],
            ),
          )),
    );
  }
}
