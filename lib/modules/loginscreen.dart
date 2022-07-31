

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:loginscreen/models/model_screen.dart';
import 'package:loginscreen/modules/register_screen.dart';

import 'list_gym.dart';
 class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
   var usernamecontroller=TextEditingController();
   var passwordcontroller=TextEditingController();
   final _formKey = GlobalKey<FormState>();
   bool obscureText = true;
   String? email ;
   String?  password;

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body:SingleChildScrollView(
         child: Container(
           decoration:BoxDecoration(
             gradient: LinearGradient(
               colors:[
                 Colors.grey,
                 Colors.white60,
                 Colors.white60,
                 Colors.white60,
                 Colors.white60,
                 Colors.white60,
                 Colors.grey,
                 Colors.white60,
                 Colors.white60,


               ],
               begin: Alignment.topRight,
               end: Alignment.bottomLeft,
             ),

           ),
           child: Padding(
             padding: const EdgeInsets.only(
               top: 76.0,
               right: 20.0,
               left: 20.0,

             ),
             child: Column(
               children: [
                Container(
                   child: Image.asset(
                    'images/login.png',
                     height: 200.0,
                     width: 200.0,

                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  child: Text(
                    'Welcome back!',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),

                  ),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Container(
                  child: Text(
                    'Log in to  your existant account of Q Allure',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic,
                    ),

                  ),
                ),
                SizedBox(
                  height: 33.0,
                ),
               Container(
                 child:Form(
                   key: _formKey,
                   child: Column(
                     children: [
                       FieldWidget(
                         iconData: Icons.person,
                         hintText: 'Enter your User name',
                         labelText: 'User name',
                         type: TextInputType.emailAddress,
                         validate:  (  value)
                         {
                           email=value;
                           if (value == null || value.isEmpty)
                           {
                             return'name must not  be empty';
                           }
                           return null;
                         },
                         controller: usernamecontroller,

                       ),
                       SizedBox(
                         height: 18.0,
                       ),
                       FieldWidget(
                         iconData:Icons.lock,
                         hintText: 'Enter your password',
                         labelText: 'password',
                         type: TextInputType.name,
                         validate: (value){
                           password=value;
                           if (value == null || value.isEmpty) {
                             return'password  must not  be empty';
                           }
                           return null;
                         },
                         controller: passwordcontroller,
                           suffixIcon: Icons.remove_red_eye_outlined,
                           obscureText:obscureText,
                         onPressedfun: (){
                           setState(() {
                             obscureText= !obscureText;

                           });
                         }

                       ),
                     ],
                   ),
                 ),
               ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
alignment: Alignment.bottomRight,
                  child: Text('Forget password?'
                  ,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,


                  ),),
                ),
                SizedBox(
                  height: 14.0,
                ),
                 ButtonWidget(
                     text: 'LOGIN',
                     fun: ()
                     {

                       if(_formKey.currentState!.validate()){
                         print(usernamecontroller.text);
                         print(passwordcontroller.text);
                       }
                       print(email);
                       print(password);
                     }

                 ),
                SizedBox(
                  height: 19.0,
                ),

                Container(
                  child: Text(
                    'Or connect using',
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,

                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       Container(
  child:MaterialButton(
      minWidth: 130.0,
      onPressed: (){},
      color: Colors.indigo,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
          children: [
          Image(image: AssetImage('images/facebook.png'
          ),
            height: 20.0,
            width: 20.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text('Facebook',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),

          ],
      ))
),
                      Container(
                          child:MaterialButton(
                            minWidth: 130.0,
                              onPressed: (){},
                              color: Colors.red.shade800,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                children: [
                                 Image(image: AssetImage('images/google.png'
                                 ),
                                   height: 20.0,
                                   width: 20.0,
                                 ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text('Google',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),),
                                ],
                              ))
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account? '),
                      TextButton(onPressed:(){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context)=>Register_Screen(),

                      ),);
                      }, child:Text('Register Now'))

                    ],
                  ),
                ),


              ],
             ),
           ),
         ),
       ),
     );
   }
}
