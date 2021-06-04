import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
var emailController=TextEditingController();
var passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
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
                  obscureText: true,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  onChanged: (value){
                    print(value);
                  },
                  decoration:InputDecoration(
                    labelText: 'password',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon:Icon(
                      Icons.remove_red_eye,
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
                    {
                     print(emailController.text) ;
                     print(passwordController.text);
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
      )
    );
  }
}
