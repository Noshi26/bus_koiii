import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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
    'BaroyarHat',
    'Hathazari College',
    'Didar Market',
    'Miler Matha',
    'Navy Hospital Gate',
    'BOT',
    'Shah Amanat Bridge',
    'Chatteswari',
    'Kotowali',
    'Lucky Plaza',
    'Kapital Rastar Matha',
    'GEC Circle',
    'Oxygen Moor',
    'Koibolyodham',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text(
          'Available Routes',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for Bus Route',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: routes.length,
              separatorBuilder: (context, index) => Divider(height: 1, color: Colors.grey[300]),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(routes[index]),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Handle route tap
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
