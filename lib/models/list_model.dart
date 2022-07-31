import 'package:flutter/material.dart';


Widget NewWidget({
  required String image,
  required String text,
  required String Textnumber,
  String subtext="TRAINING",

})=> Container(

  padding: EdgeInsets.all(15.0),
  height: 180.0,
  child: Row(
    children: [
      Container(

        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(image,
            width: 125.0,
            height: 135.0,
            fit: BoxFit.fill,
          ),
        ),

      ),
      SizedBox(width: 10.0
      ),

      Expanded(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                MaterialButton(
                  onPressed: (){},
                  height: 25,
                  minWidth: 18,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19.0)),
                  child: Text("RUNNING",
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                    ) ,
                  ),
                ),
                SizedBox(
                    width: 5.0),
                MaterialButton(
                  onPressed: (){},
                  height: 24,
                  minWidth: 18,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19.0)),
                  child: Text(subtext,
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                    ) ,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 9.0,
                ),
                Text('May 20,2021',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 17.0,
                )  ,
                Row(
                  children: [
                    Container(
                      child:Row(
                        children: [
                          Icon(Icons.star_border,
                            size: 16,
                            color: Colors.grey,),
                          SizedBox(width: 7.0,),
                          Text('Logan',
                            style: TextStyle(
                                color: Colors.grey
                            ),)
                        ],
                      ),

                    ),

                    SizedBox(
                        width: 12),
                    Container(
                      child:Row(
                        children: [
                          Icon(Icons.chat_bubble_outline,
                            size: 14,
                            color: Colors.grey,),
                          SizedBox(width: 7.0,),
                          Text(Textnumber,
                            style: TextStyle(
                                color: Colors.grey
                            ),)
                        ],
                      ),

                    ),


                  ],
                )
              ],
            ),


          ],
        ),
      ),

    ],
  ),
);





