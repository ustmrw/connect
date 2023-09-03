import 'package:flutter/material.dart';

var defaultBackgroundColor = Colors.grey[300];
var appBarColor = Colors.grey[900];
var myAppBar = AppBar(
  elevation: 0,
  backgroundColor: appBarColor,
  title: const Text('C O N N E C T'),
  centerTitle: true,
);

var tilePadding = const EdgeInsets.all(8);
var myDrawer = Drawer(
  width: 250,
  elevation: 0,
  child: Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
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
              onPressed: () {},
              child: ListTile(
                leading: const Icon(Icons.home),
                title: Text(
                  'D A S H B O A R D',
                ),
              ),
            ),
          ),
          Padding(
            padding: tilePadding,
            child: TextButton(
              onPressed: () {},
              child: ListTile(
                leading: const Icon(Icons.settings),
                title: Text(
                  'S E T T I N G S',
                ),
              ),
            ),
          ),
          Padding(
            padding: tilePadding,
            child: TextButton(
              onPressed: () {},
              child: ListTile(
                leading: const Icon(Icons.info),
                title: Text(
                  'A B O U T',
                ),
              ),
            ),
          ),
          Padding(
            padding: tilePadding,
            child: TextButton(
              onPressed: () {},
              child: ListTile(
                leading: const Icon(Icons.logout),
                title: Text(
                  'L O G O U T',
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
);
