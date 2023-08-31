import 'package:flutter/material.dart';
import 'package:connect/constants.dart';
import 'package:connect/util/my_tile.dart';

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
    return Scaffold(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        appBar: myAppBar,
        drawer: myDrawer,
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
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Text(
                  'Notifications',
                  style: TextStyle(fontSize: 20),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
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
              ],
            ),
          ),
        ));
  }
}
