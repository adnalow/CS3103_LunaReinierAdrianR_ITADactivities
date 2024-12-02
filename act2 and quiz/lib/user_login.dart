import 'package:activity_2_cv/main.dart';
import 'package:flutter/material.dart';


class UserLogin extends StatelessWidget {
  UserLogin({super.key});

  // TextEditingController to manage input
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                  const Positioned(
                    top: 30,
                    child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.person_2_outlined,
                              size: 70,
                              color: Colors.white,
                            ),
                    ),
                  ),
                    Transform.scale(
                      scale: 0.9,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color of the container
                          borderRadius: BorderRadius.circular(12), // Rounded corners
                          border: Border.all(color: Colors.blue), // Border color and width
                        ),
                        padding: const EdgeInsets.all(20.0), // Padding inside the container
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Transform.scale(
                                  scale: 0.9,
                                  child: const Icon(
                                    Icons.person,
                                    size: 45,
                                  ),
                                ),
                                SizedBox(
                                    width: 300,
                                    child: Transform.scale(
                                      scale: 0.9,
                                      child: TextField(
                                        controller: _usernameController,
                                        style: const TextStyle(fontSize: 20),
                                        decoration: const InputDecoration(
                                          labelText: 'Username',
                                          border: OutlineInputBorder(),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.blue,
                                            )
                                          )
                                        ),
                                      ),
                                    )
                                  ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(
                                  Icons.key,
                                  size: 45,
                                ),
                                SizedBox(
                                  width: 300,
                                  child: Transform.scale(
                                    scale: 0.9,
                                    child: TextField(
                                      controller: _passwordController,
                                      style: const TextStyle(fontSize: 20),
                                      decoration: const InputDecoration(
                                        labelText: 'Password',
                                        border: OutlineInputBorder(),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.blue,
                                          )
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ]
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if( _usernameController.text ==  "admin" && _passwordController.text == "123"){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                }else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Incorrect Username or Password!'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
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
                elevation: WidgetStateProperty.all(8), // Shadow depth of the button
                overlayColor: WidgetStateProperty.all(Colors.blueAccent.withOpacity(0.2)), // Color when button is pressed
              ),
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}


