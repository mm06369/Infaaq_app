import 'package:flutter/material.dart';
import 'components/text_field.dart';
import 'components/my_button.dart';
import 'components/square_tile.dart';
import 'dashboard.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void signUserIn() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //logo
              const SizedBox(
                height: 25,
              ),

              
              Container(
                
                  //height: 100,
                  //width: MediaQuery.of(context).size.width
                  padding: const EdgeInsets.all(0),
                  height: 150.0,
                  width: 150.0,
                  child: Image.asset('assets/images/infaaq_logo.png')
                  ),

              //welcome back, you've been missed
              const SizedBox(
                height: 30,
              ),

              Text(
                'Welcome back, you\'ve been missed',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),

              const SizedBox(
                height: 25.0,
              ),

              //username

              MyTextField(
                fieldName: 'Username',
                obscureText: false,
                controller: _emailController,
              ),

              const SizedBox(
                height: 15.0,
              ),
              
              //password
              MyTextField(
                fieldName: 'Password',
                obscureText: true,
                controller: _passwordController,
              ),

              //forgot password
              const SizedBox(
                height: 10.0,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () => {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              //sign in btn
              
              const SizedBox(
                height: 25.0,
              ),

              MyButton(onTap: signUserIn),

              const SizedBox(height: 10,),

              //or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                      child: Text("Or continue with")
                      ),
                    
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10,),
              //google sign in

              Row(
                
                mainAxisAlignment: MainAxisAlignment.center,

                children: const [
                  
                  SquareTile(imagePath: 'assets/images/google.png'),

                  SizedBox(width: 25,),

                  SquareTile(imagePath: 'assets/images/facebook.png')
                  
                  
                ],
              ),

              const SizedBox(height: 20,),
              
              //not a member

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Not a member?'),
                  SizedBox(width: 5,),
                  Text('Register Now')
                ],
              )
            ],
          ),
        ));
  }
}
