import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background_image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //Foreground Content (Widgets like Image and Login Form)
          LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                children: [
                  // Left side - Image
                  Expanded(
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      margin: const EdgeInsets.all(10),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/login_image.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          child: const Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Explore Demo Limited's Premier Logistics\nand Freight Services",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Right side - Login Form
                  Expanded(
                    child: Center(
                      child: Column(
                        children: [
                          
                          Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 5,
                            margin: const EdgeInsets.all(40),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 55),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset('assets/featured_icon.png', height: 100),
                                  const SizedBox(height: 20),
                                  const Text(
                                    'Welcome Back',
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'We are glad to see you',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  const SizedBox(height: 40),
                                  SizedBox(
                                    width: 450,
                                    height: 50,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Username',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    width: 450,
                                    height: 50,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Password',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                      obscureText: true,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                                      backgroundColor:const Color.fromRGBO(53, 167, 215, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      fixedSize: const Size(450, 48)
                                    ),
                                    child: const Text('LOGIN', style: TextStyle(color: Colors.white)),
                                  ),
                                  const SizedBox(height: 20),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text('Forgot Password?', style: TextStyle(color: Color.fromRGBO(68, 93, 127, 1))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 50),
                          const Text(
                            '© 2024 DEMO GROUP. All Rights Reserved',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ]
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ]
      ),
    );
  }
}