import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 1.0,
            colors: [
              Colors.green,
              Colors.black,
            ],
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Transform.rotate(
            angle: 0.785398,
            child: Padding(
              padding: const EdgeInsets.all(35.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 15,
                      offset: const Offset(15, 15),
                    ),
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: _buildShinyCircle(),
                  ),
                ),
            ),
          ),
        ),
      ),
      ],
    );
  }

  Widget _buildShinyCircle() {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.lightBlueAccent,
            Colors.blueAccent,
          ],
          center: Alignment(-0.3, -0.5),
        ),
        boxShadow: [
          BoxShadow(blurRadius: 20),
        ],
      ),
    );
  }
}
