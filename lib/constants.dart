import 'package:flutter/material.dart';

var defaultBackgroundColor = Colors.grey[300];
var appBarColor = Colors.grey[900];
var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: const Text('C O N N E C T'),
  centerTitle: true,
);
var drawerTextColor = TextStyle(
  color: Colors.grey[600],
);

var tilePadding = const EdgeInsets.all(8);
var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  elevation: 0,
  child: Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: Colors.grey[200]),
    child: SingleChildScrollView(
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.star,
              size: 64,
            ),
          ),
          Padding(
            padding: tilePadding,
            child: TextButton(
              onPressed: null,
              child: ListTile(
                leading: const Icon(Icons.home),
                title: Text(
                  'D A S H B O A R D',
                  style: drawerTextColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: tilePadding,
            child: TextButton(
              onPressed: null,
              child: ListTile(
                leading: const Icon(Icons.settings),
                title: Text(
                  'S E T T I N G S',
                  style: drawerTextColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: tilePadding,
            child: TextButton(
              onPressed: null,
              child: ListTile(
                leading: const Icon(Icons.info),
                title: Text(
                  'A B O U T',
                  style: drawerTextColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: tilePadding,
            child: TextButton(
              onPressed: null,
              child: ListTile(
                leading: const Icon(Icons.logout),
                title: Text(
                  'L O G O U T',
                  style: drawerTextColor,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
);
