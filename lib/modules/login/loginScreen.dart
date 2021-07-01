import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
var emailController=TextEditingController();

var passwordController=TextEditingController();

var formKey=GlobalKey<FormState>();

bool isSecure=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                   height: 40,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted:(value){
                      print(value);
                    },
                    onChanged: (value){
                      print(value);
                    },
                    validator: (value){
                      if (value.isEmpty){
                        return 'email is not valid';
                      }
                      return null;
                    },
                    decoration:InputDecoration(
                      labelText: 'Email address',
                      prefixIcon:Icon(
                          Icons.email,
                      ),
                      border:OutlineInputBorder(),
                    ) ,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isSecure,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    onChanged: (value){
                      print(value);
                    },
                    validator: (value){
                      if (value.isEmpty){
                        return 'password is not valid';
                      }
                      return null;
                    },
                    decoration:InputDecoration(
                      labelText: 'password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon:IconButton(
                        icon:isSecure? Icon(
                          Icons.visibility,
                        ):
                        Icon(
                          Icons.visibility_off,
                        ),
                        onPressed: (){

                         setState(() {
                            isSecure=!isSecure;
                         });
                        },
                      ),
                      border:OutlineInputBorder(),
                    ) ,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: MaterialButton(
                      onPressed: ()
                      {if (formKey.currentState.validate())
                      {
                      //   print(emailController.text) ;
                      // print(passwordController.text);
                      }
                        },
                      child:Text(
                        'LOGIN',
                        style: TextStyle(
                          color:Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(onPressed: (){},
                          child:
                          Text(
                            'Register Now',
                          ),
                      ),
                    ],
                  ),



                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
