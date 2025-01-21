import 'package:flutter/material.dart';

class DerwarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.blue,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Hello, David'),
                accountEmail: Text('New York, US'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    'D',
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.health_and_safety, color: Colors.white),
                title: Text('Health Workers', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.local_hospital, color: Colors.white),
                title: Text('Clinics & Medical Offices', style: TextStyle(color: Colors.white)),
              ),
              // Add more menu items here
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.lightBlueAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            child: Image.asset('assets/medical_icons.png'), // Decorative image
            bottom: 0,
            right: 0,
          ),
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'Welcome Back!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // Add other widgets for the main content
              ],
            ),
          ),
        ],
      ),
    );
  }
}


