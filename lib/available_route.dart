import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AvailableRoutesScreen(),
    );
  }
}

class AvailableRoutesScreen extends StatelessWidget {
  final List<String> routes = [
    "BaroyarHat",
    "Hathazari College",
    "Didar Market",
    "Miler Matha",
    "Navy Hospital Gate",
    "BOT",
    "Shah Amanat Bridge",
    "Chatteswari",
    "Kotowali",
    "Lucky Plaza",
    "Kapital Rastar Matha",
    "GEC Circle",
    "Oxygen Moor",
    "Koibolyodham"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB2F7B7), // Background green color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          "Available Routes",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search for Bus Route",
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: routes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      routes[index],
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Handle route tap
                    },
                  );
                },
                separatorBuilder: (context, index) => Divider(height: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
