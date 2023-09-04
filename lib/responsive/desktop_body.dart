import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_card.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  final GlobalKey<_DesktopScaffoldState> _refreshIndicatorKey =
      GlobalKey<_DesktopScaffoldState>();
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
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    // Expanded(
                    //   child: ListView.builder(
                    //     physics: BouncingScrollPhysics(),
                    //     itemCount: 7,
                    //     itemBuilder: (context, index) {
                    //       return const MyTile();
                    //     },
                    //   ),
                    // ),
                    MyCard(),
                  ],
                ),
              ),
              // second half of page
              Expanded(
                child: PageView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    // list of stuff
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[200],
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
      ),
    ));
  }
}
