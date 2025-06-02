// ignore_for_file: file_names

import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget{
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isPasswordVisible = false;

  void _register(){
    final name = _nameController.text.trim();
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if(name.isEmpty || email.isEmpty || password.isEmpty){
      _showSnackBar("Please fill all the details");
      return;
    }

    if(!email.contains('@') || !email.contains('.')){
      _showSnackBar("Invalid email address");
      return;
    }

    if(password.length < 6){
      _showSnackBar("Password must be at least 6 characters");
      return;
    }

    _showSnackBar("Register Successfully as $name");
  }

     void _showSnackBar(String message){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
     }

      @override
      void dispose(){
        _nameController.dispose();
        _emailController.dispose();
        _passwordController.dispose();
        super.dispose();
      }

      @override
      Widget build(BuildContext context){
        return Scaffold(
          appBar: AppBar(title: const Text("Register")),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const Text(
                  'Create a New Account',
                  style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),

               TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
               ),

               const SizedBox(height: 20),

               TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
               ),

               const SizedBox(height: 20),

               TextField(
                controller: _passwordController,
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible ? Icons.visibility : Icons.visibility_off
                    ),

                    onPressed: (){
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      }
                      );
                    },
                  )
                ),
               ),

               const SizedBox(height: 30),

               ElevatedButton(onPressed: _register, child: const Text("Register"),
               ),
              ],
            ),
          ),
        );
      }
    }