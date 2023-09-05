import 'package:flutter/material.dart';
import '../responsive/tool_pages/health_page.dart';
import '../responsive/tool_pages/id_page.dart';
import '../responsive/tool_pages/money_page.dart';
import '../responsive/tool_pages/police_page.dart';
import '../responsive/tool_pages/vote_page.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(8),
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
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                ),
                child: Hero(
                  tag: 'ID',
                  child: Center(
                    child: Text(
                      'ID',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
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
                    builder: (context) => HealthPage(),
                  ),
                );
              },
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue,
                ),
                child: Hero(
                  tag: 'Health',
                  child: Center(
                    child: Text(
                      'Health',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
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
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                ),
                child: Hero(
                  tag: 'Money',
                  child: Center(
                    child: Text(
                      'Money',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
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
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue,
                ),
                child: Hero(
                  tag: 'Vote',
                  child: Center(
                    child: Text(
                      'Vote',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
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
                    builder: (context) => PolicePage(),
                  ),
                );
              },
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                ),
                child: Hero(
                  tag: 'Police',
                  child: Center(
                    child: Text(
                      'Police',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
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
    );
  }
}
