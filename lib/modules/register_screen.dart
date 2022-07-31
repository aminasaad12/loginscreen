import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginscreen/models/model_screen.dart';

import 'list_gym.dart';
import 'loginscreen.dart';

class Register_Screen extends StatefulWidget {

  @override
  State<Register_Screen> createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {
  var usernamecontroller=TextEditingController();
  var emailcontroller=TextEditingController();
  var phonecontroller=TextEditingController();
  var passwordcontroller=TextEditingController();
  var confirmpasswordcontroller=TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ), onPressed: () {
            Navigator.pop(context);
        },
        ),
      ),
      body:SingleChildScrollView(
        child: Container(
          decoration:BoxDecoration(
            gradient: LinearGradient(
                colors:[
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
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Let\'s Get Started!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(
                  height: 13.0,
                ),
                Container(
                  child: Text(
                    'Create an account to Q Allure to get all features',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        FieldWidget(iconData: Icons.person,
                          hintText: 'Enter your User name',
                          labelText: 'User name',
                          type: TextInputType.name,
                          validate:  (  value)
                          {
                            if (value == null || value.isEmpty)
                            {
                              return'name must not  be empty';
                            }
                            return null;
                          },
                          controller: usernamecontroller,

                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        FieldWidget(
                          iconData:  Icons.email_outlined,
                          hintText: 'Enter your email',
                          labelText: 'Email',
                          type: TextInputType.name,
                          validate:  (  value)
                          {
                            if (value == null || value.isEmpty)
                            {
                              return'email must not  be empty';
                            }
                            return null;
                          },
                          controller: emailcontroller,

                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        FieldWidget(
                          iconData:Icons.smartphone,
                          hintText: 'Enter your phone',
                          labelText: 'phone',
                          type: TextInputType.name,
                          validate:  (  value)
                          {
                            if (value == null || value.isEmpty)
                            {
                              return'phone must not  be empty';
                            }
                            return null;
                          },
                          controller: phonecontroller,

                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        FieldWidget(iconData:Icons.lock,
                          hintText: 'Enter your password',
                          labelText: 'password',
                          type: TextInputType.name,
                          validate: (value){
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
                        SizedBox(
                          height: 20.0,
                        ),
                        FieldWidget(
                          controller: confirmpasswordcontroller,
                          iconData:Icons.lock,
                          hintText: 'Enter your confirm password',
                          labelText: ' confirm password',
                          type: TextInputType.name,
                          validate: (value){
                            if (value == null || value.isEmpty) {
                              return'password  must not  be empty';
                            }
                            return null;
                          },
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
                  height: 44.0,
                ),
                ButtonWidget(
                    text: 'CREATE',
                    fun: (){
    if(_formKey.currentState!.validate()){
        print(usernamecontroller.text);
        print(emailcontroller.text);
        print(phonecontroller.text);
        print(passwordcontroller.text);
        print(confirmpasswordcontroller.text);
    }
    Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>Gym_Screen(),));

                    }
                ),
                SizedBox(
                  height: 22.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account? '),
                      TextButton(onPressed:(){
                          Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=> LoginScreen(),
                          ));
                      }, child:Text('Login here'))

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
