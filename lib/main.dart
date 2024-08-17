import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

 class MyApp extends StatefulWidget {
   const MyApp({super.key});
   @override
   State<MyApp> createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
  String imgUnselected = 'assets/unselected circle.png';
  String imgSelected = 'assets/selected circle.png';
  String firstCircle = 'assets/unselected circle.png';
  String secondCircle = 'assets/unselected circle.png';
  String thirdCircle = 'assets/unselected circle.png';
  String fourthCircle = 'assets/unselected circle.png';
  String fifthCircle = 'assets/unselected circle.png';
  String sixthCircle = 'assets/unselected circle.png';
  String seventhCircle = 'assets/unselected circle.png';
  String eightCircle = 'assets/unselected circle.png';

  bool gameisActive = false;


  void setSelectedImage(int number){
    int imgNumber = number;
    setState(() {
      if(imgNumber == 1){
        firstCircle = imgSelected;
      }
      if(imgNumber == 2){
         secondCircle = imgSelected;
      }
      if(imgNumber == 3){
         thirdCircle = imgSelected;
      }
      if(imgNumber == 4){
         fourthCircle  = imgSelected;
      }
      if(imgNumber == 5){
         fifthCircle= imgSelected;
      }
      if(imgNumber == 6){
         sixthCircle = imgSelected;
      }
      if(imgNumber == 7){
        seventhCircle = imgSelected;
      }
      if(imgNumber == 8){
        eightCircle = imgSelected;
      }

    });
  }

   @override
   Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),


            child: Stack(
              children: [
                Positioned(
                  top: 140,
                  left: 9,
                  child: Image.asset(
                    'assets/stand-without-circles.png',
                     width: 367,
                    height: 500,
                  ),
                ),

                //first circle
                Positioned(
                  top: 115,
                  left: 150,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(1) ,
                    child: Image.asset(
                    '$firstCircle',
                    width: 90,
                    height:90,
                  ),
                ),
                ),

                //2
                Positioned(
                  top: 150,
                  left: 246,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(2) ,
                    child: Image.asset(
                    '$secondCircle',
                    width: 90,
                    height:90,
                  ),
                ),
                ),

                //3
                Positioned(
                  top: 248,
                  left: 278,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(3) ,
                    child: Image.asset(
                    '$thirdCircle',
                    width: 90,
                    height:90,
                  ),
                ),
                ),

                //4
                Positioned(
                  top: 341,
                  left: 240,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(4) ,
                    child:Image.asset(
                    '$fourthCircle',
                    width: 90,
                    height:90,
                  ),
                ),
                ),

                //5
                Positioned(
                  top: 375,
                  left: 146,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(5) ,
                    child: Image.asset(
                    '$fifthCircle',
                    width: 90,
                    height:90,
                  ),
                ),
                ),
                //6
                Positioned(
                  top: 339,
                  left: 55,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(6) ,
                    child: Image.asset(
                    '$sixthCircle',
                    width: 90,
                    height:90,
                  ),
                ),
                ),
                //7
                Positioned(
                  top: 246,
                  left: 20,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(7) ,
                    child: Image.asset(
                      '$seventhCircle',
                      width: 90,
                      height:90,
                    ),
                  ),
                ),

                //8
                Positioned(
                  top: 144,
                  left: 51,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(8) ,
                    child: Image.asset(
                    '$eightCircle',
                    width: 90,
                    height:90,

                  ),
                ),
                ),

                // botttom bar
                Positioned(
                  top: 728,
                  left: 0,
                  child: Image.asset(
                    'assets/balance-board.png',
                    width: 500,
                    height:100,

                  ),
                ),
              ],
            ),
          ),

        ),
      );
    }
 }



