// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ButtonWidget({
  double width=150.0,
  double height=44.0,
  Color backgroung=Colors.indigo,
  required VoidCallback fun,
  required String text,

})=>  Material(
  elevation: 16.0,
  borderRadius: BorderRadius.circular(20.0),
  child: Container(
    child: MaterialButton(
      minWidth: width,
      height: height,
      color: backgroung,
      onPressed:fun,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19.0)),
      child: Text(text,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,

        ),),


    ),
  ),
);


Widget FieldWidget({
   TextEditingController? controller,
  required TextInputType  type,
  required String hintText,
  required String labelText,
  required IconData iconData,
  required String? Function(String?)? validate,
  IconData? suffixIcon,
  VoidCallback? onPressedfun,
  bool obscureText = false,


})=> Material(
  elevation: 20.0,
  borderRadius: BorderRadius.circular(28.0),
  child: Container(
    child:TextFormField(
      controller:controller,
      keyboardType:type,
      onChanged: (String value){
        print(value);
      },
      onFieldSubmitted: (String value){
        print(value);
      },
      validator: validate,
      obscureText:obscureText,

      style: TextStyle(color: Colors.indigo),
      cursorColor: Colors.indigo,
      decoration: InputDecoration(
          hintText:hintText,
          labelText:labelText,
          labelStyle: new TextStyle(
            color: const Color(0xFF424242),
          ),

          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.0),
          ),
          focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(23.0),
            borderSide:
            BorderSide(
                color: Colors.indigo,width: 1),
          ),
          prefixIcon: Icon(
            iconData,
            color: Colors.grey,
          ),
          suffixIcon: IconButton(
            onPressed:onPressedfun,
            icon: Icon(
              suffixIcon,
              color: Colors.grey,
            ),
          )
      ),
    ),
  ),
);

