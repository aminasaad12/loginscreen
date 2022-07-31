
// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loginscreen/models/list_model.dart';

class Gym_Screen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Container(
            padding: EdgeInsets.only(
              left: 12.0,
            ),
          child: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(
                  Icons.arrow_back_ios),
              color: Colors.black
          ),
        ),
        title: Container(
          alignment: Alignment.topCenter,
          child: Text('Latest News',
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
            ),
          ),

        ),
        actions: [
         Container(
           padding: EdgeInsets.only(
             right: 12.0,
           ),
           child:  Icon(Icons.search,
             color: Colors.black,
             size: 28.0,
           ),
         ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 50.0,
                color: Color(0xffebecf0),
                child: Row(
                  children: [
                    SizedBox(width: 14),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.bar_chart,
                            color: Colors.blue,
                            size: 25,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text('Sort',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0
                          ),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(

                      child: Row(
                        children: [
                          Icon(
                            Icons.tune_outlined,
                            color: Colors.blue,
                            size: 25,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text('Refine',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18.0
                            ),),
                        ],
                      ),
                    ),
                    SizedBox(width: 100),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: null,
                          fillColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.black54,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Icon(
                          Icons.format_list_bulleted_sharp,
                          color: Colors.blue,
                          size: 25,
                        ),


                      ],
                    ),
                  ],
                ),
              ),
              NewWidget(image: 'images/Full_Marathon.jpg',
                  text: 'Your Full Marathon Training Plan - 20 Weeks',
                  Textnumber: '19',

              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 22.0,
                  right: 22.0,
                ),
                child: Divider(
                  color: Colors.grey,
                  height: 22,
                ),
              ),
              NewWidget(image: 'images/Training_Guide.jpg',
                  text: 'Marathon Training Guide For (Total) Beginners',
                  Textnumber: '5'),
              Padding(
                padding: const EdgeInsets.only(
                  left: 22.0,
                  right: 22.0,
                ),
                child: Divider(
                  color: Colors.grey,
                  height: 22,
                ),
              ),
              NewWidget(image: 'images/Bi_Women.jpg',
                  text: 'Bicep Exercises For Women',
                  Textnumber: '0'),
              Padding(
                padding: const EdgeInsets.only(
                  left: 22.0,
                  right: 22.0,
                ),
                child: Divider(
                  color: Colors.grey,
                  height: 22,
                ),
              ),
              NewWidget(image: 'images/Lifting.jpg',
                  text: 'How To Get Back Into Weight Training And Lifting After A play ',
                  Textnumber: '4'),
              Padding(
                padding: const EdgeInsets.only(
                  left: 22.0,
                  right: 22.0,
                ),
                child: Divider(
                  color: Colors.grey,
                  height: 22,
                ),
              ),
              NewWidget(image: 'images/gym5.jpeg',
                  text: 'Bicep Exercises For Women ',
                  Textnumber: '6'),
              Padding(
                padding: const EdgeInsets.only(
                  left: 22.0,
                  right: 22.0,
                ),
                child: Divider(
                  color: Colors.grey,
                  height: 22,
                ),
              ),
              NewWidget(image: 'images/gym1.jpeg',
                  text: 'Marathon Training Guide For (Total) Beginners',
                  Textnumber: '5'),
              Padding(
                padding: const EdgeInsets.only(
                  left: 22.0,
                  right: 22.0,
                ),
                child: Divider(
                  color: Colors.grey,
                  height: 22,
                ),
              ),
              NewWidget(image: 'images/gym2.jpeg',
                  text: 'Bicep Exercises For Women',
                  Textnumber: '0'),
              Padding(
                padding: const EdgeInsets.only(
                  left: 22.0,
                  right: 22.0,
                ),
                child: Divider(
                  color: Colors.grey,
                  height: 22,
                ),
              ),
              NewWidget(image: 'images/gym3.jpeg',
                  text: 'How To Get Back Into Weight Training And Lifting After A play ',
                  Textnumber: '4'),
              Padding(
                padding: const EdgeInsets.only(
                  left: 22.0,
                  right: 22.0,
                ),
                child: Divider(
                  color: Colors.grey,
                  height: 22,
                ),
              ),
              NewWidget(image: 'images/gym4.jpeg',
                  text: 'Your Full Marathon Training Plan - 20 Weeks ',
                  Textnumber: '0'),
              Padding(
                padding: const EdgeInsets.only(
                  left: 22.0,
                  right: 22.0,
                ),
                child: Divider(
                  color: Colors.grey,
                  height: 22,
                ),
              ),
              NewWidget(image: 'images/gym5.jpeg',
                  text: 'Bicep Exercises For Women ',
                  Textnumber: '6'),
              Padding(
                padding: const EdgeInsets.only(
                  left: 22.0,
                  right: 22.0,
                ),
                child: Divider(
                  color: Colors.grey,
                  height: 22,
                ),
              ),
              NewWidget(image: 'images/gym2.jpeg',
                  text: 'Bicep Exercises For Women',
                  Textnumber: '0'),
              Padding(
                padding: const EdgeInsets.only(
                  left: 22.0,
                  right: 22.0,
                ),
                child: Divider(
                  color: Colors.grey,
                  height: 22,
                ),
              ),
              NewWidget(image: 'images/gym3.jpeg',
                  text: 'How To Get Back Into Weight Training And Lifting After A play ',
                  Textnumber: '4'),
              Padding(
                padding: const EdgeInsets.only(
                  left: 22.0,
                  right: 22.0,
                ),
                child: Divider(
                  color: Colors.grey,
                  height: 22,
                ),
              ),
              NewWidget(image: 'images/gym4.jpeg',
                  text: 'Your Full Marathon Training Plan - 20 Weeks ',
                  Textnumber: '0'),







            ],
          ),
        ),
      ),
    );
  }
}


