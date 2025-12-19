import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String inputvalue = "";
  String calvalue ="";
  String operator ="";
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.black,
        body: 
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: 
            Text(inputvalue, style: TextStyle(color: Colors.white38, fontSize: 20)),
            ),       
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Row(
      children: [
       calbutton("7",Colors.white30 ),
       calbutton("8", Colors.white30 ),
       calbutton("9", Colors.white30 ),
       calbutton("/", Colors.orangeAccent ),
      ],
    ),
    Row(
      children: [
       calbutton("4",Colors.white38 ),
       calbutton("5", Colors.white38 ),
       calbutton("6", Colors.white38 ),
       calbutton("*", Colors.orange ),
      ],
    ),
    Row(
      children: [
       calbutton("1",Colors.white38 ),
       calbutton("2", Colors.white38 ),
       calbutton("3", Colors.white38 ),
       calbutton("-", Colors.orange ),
      ],
    ),
    Row(
      children: [
       calbutton("0",Colors.white38 ),
       calbutton(".", Colors.white38 ),
       calbutton("=", Colors.white38 ),
       calbutton("+", Colors.orange ),
      ],
    ),
  ],
  
),
      calbutton("clear", Colors.black)

          ],
          
          
        )
        

      ),
       
    );
  }

  Widget calbutton(String text, Color baccolor)
  {
    return InkWell(
      onTap: () {
        if(text == "clear")
        {
          setState(() {
            inputvalue = "";
          });
         
        }
        else if(text == "+" || text == "-" || text == "*" || text == "/")
        { 
          setState(() {
            calvalue = inputvalue;
            inputvalue ="";
            operator = text;
          });
        }

          else if (text == "=")
          {
           setState(() {
             double clac =double.parse(calvalue);
             double input = double.parse(inputvalue);
             if(operator == "+")
             {
              inputvalue = (clac + input).toString();
             }
             else if (operator == "-")
             {
              inputvalue = (clac - input).toString();

             }
             else if (operator == "*")
             {
              inputvalue = (clac * input).toString();

             }
             else if (operator == "/") {
              inputvalue = (clac / input).toString();
             }
             
             
           }); 
          }

        

        else{
        setState(() {
          inputvalue =inputvalue + text;
        });
        }
      },
      child: Container(
      
            decoration: BoxDecoration(
              color: baccolor,
              borderRadius: BorderRadius.circular(100),
            ),
            margin: EdgeInsets.all(15),
            height:40,
            width: 40,
            
            alignment: Alignment.center,
            child: Text(text,
            style: TextStyle(color: Colors.white,fontSize: 30),
            ),
            
            
            ),
    );
          
        

  }
}
