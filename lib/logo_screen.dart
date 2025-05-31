import 'package:flutter/material.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF00Aaff), 
              Color(0xFF00BFFF), 
              Color(0xFF008080), 
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.white.withOpacity(0.3), // Soft blur effect
                      blurRadius: 12.0, // Adjust blur intensity
                      spreadRadius: 3.0,
                    ),
                  ],
                  border: Border.all(
                    color: Color(0xFF00Aaff), // Light grey border
                    width: 2, // Thin border
                  ),
                ),
                child: const Center(
                  child: Text(
                    '₹',
                    style: TextStyle(
                      fontSize: 80,
                      color: Color(0xFF1A237E), // Dark blue rupee
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // App Name
              const Column(
                children: [
                  Text(
                    'Smart Personal',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    'Finance Manager',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Tagline
              Text(
                'Track Smart. Grow Faster',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black, // black
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
