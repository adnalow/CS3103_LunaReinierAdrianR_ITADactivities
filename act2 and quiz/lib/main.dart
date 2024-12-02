import 'package:activity_2_cv/home_screen.dart';
import 'package:activity_2_cv/user_login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My CV App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue, 
      ),
      home: UserLogin(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My CV',
          style: TextStyle(
            color: Colors.white,
          ),
          ),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer( 
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'CV Sections',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Education'),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Skills'),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Projects'),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Experience'),
            ),
            const Divider(),
            Padding(
            padding: const EdgeInsets.all(16.0), // Optional padding for button spacing
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserLogin()),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blue), // Background color of button
                foregroundColor: WidgetStateProperty.all(Colors.white), // Text color
                padding: WidgetStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Padding inside the button
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder( 
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                elevation: WidgetStateProperty.all(10), // Shadow depth of the button
                overlayColor: WidgetStateProperty.all(Colors.blueAccent.withOpacity(0.2)), // Color when button is pressed
              ),
              child: const Text('Logout'),
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child:HomeScreen(),
      ),
    );
  }
}
