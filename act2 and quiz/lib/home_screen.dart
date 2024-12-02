import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';  // For File type

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  // Declare a variable to hold the image file
  File? _image;

  // Method to pick an image from gallery or camera
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    // Pick image from gallery
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path); // Update image state with the selected file
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              // Profile Picture section
              Stack(
                alignment: Alignment.center,
                children: [
                  const SizedBox(
                    width: 150.0, // Width of the circle
                    height: 150.0, // Height of the circle
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 168, 205, 236),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  // If image is selected, show it, otherwise just show the image icon
                  _image != null
                      ? CircleAvatar(
                          radius: 75,  // Make sure it fills the circle
                          backgroundImage: FileImage(_image!),
                        )
                      : const Text(
                          'RL',
                          style: TextStyle(
                            fontSize: 80,
                            color: Color.fromARGB(255, 6, 109, 194),
                          ),
                        ),
                      // Tap Gesture to pick image
                      GestureDetector(
                        onTap: _pickImage, // Pick image when tapped
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Reinier Adrian Luna',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                '09666928971',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 152, 149, 149),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'reinieradrianluna@gmail.com',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 152, 149, 149),
                ),
              ),
              const SizedBox(height: 20),
              const Stack(
                children: [
                  SizedBox(
                    width: 400,
                    height: 300,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Professional Goal',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
