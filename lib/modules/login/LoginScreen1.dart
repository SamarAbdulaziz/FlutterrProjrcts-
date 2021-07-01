import 'package:flutter/material.dart';

class LoginScreen1 extends StatelessWidget {
var emailController=TextEditingController();
var passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height:40,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                 onFieldSubmitted: (value){
                    print(value);
                 },
                 decoration: InputDecoration(
                   labelText: 'Email Address',
                   prefixIcon: Icon(
                       Icons.email,
                   ) ,
                   border: OutlineInputBorder()
                 ),
                ),
                SizedBox(
                  height:15,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  obscureText:true ,
                  decoration: InputDecoration(
                      labelText: 'Password Address',
                      prefixIcon: Icon(
                        Icons.lock,
                      ) ,
                      suffix: Icon(
                        Icons.remove_red_eye,
                      ),
                      border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(onPressed: (){},
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account',
                    ),
                    TextButton(onPressed: (){
                      print(emailController.text);
                      print(passwordController.text);
                    },
                        child: Text(
                          'Register',
                        ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
