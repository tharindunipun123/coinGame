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

  int Balance = 0;
  int WinAmount = 0;
  int Time = 30;

  void getBalance(){

  }

  void setSelectedImage(int number){
    int imgNumber = number;
    setState(() {
      bool gameisActive = false;
      if (gameisActive == false) {
        if (imgNumber == 1) {
          firstCircle = imgSelected;
        }
        if (imgNumber == 2) {
          secondCircle = imgSelected;
        }
        if (imgNumber == 3) {
          thirdCircle = imgSelected;
        }
        if (imgNumber == 4) {
          fourthCircle = imgSelected;
        }
        if (imgNumber == 5) {
          fifthCircle = imgSelected;
        }
        if (imgNumber == 6) {
          sixthCircle = imgSelected;
        }
        if (imgNumber == 7) {
          seventhCircle = imgSelected;
        }
        if (imgNumber == 8) {
          eightCircle = imgSelected;
        }
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
                //win button in top bar
                Positioned(
                  top: 36,
                  left: 10,

                  child: Image.asset(
                    'assets/win-history-btn.png',
                    width: 50,
                    height:35,

                  ),
                ),

                // music control button
                Positioned(
                  top: 36,
                  left: 65,

                  child: Image.asset(
                    'assets/bacground-music-btn.png',
                    width: 50,
                    height:35,

                  ),
                ),
                 // HEADING
                Positioned(
                  top: 36,
                  left: 125,

                  child: Text("GREEDY LEO" , style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),),

                ),
               // MORE MENU BUTTON
                Positioned(
                  top: 36,
                  left: 280,

                  child: Image.asset(
                    'assets/more-menu-btn.png',
                    width: 50,
                    height:35,

                  ),
                ),

                Positioned(
                  top: 140,
                  left: 9,
                  child: Image.asset(
                    'assets/stand-without-circles.png',
                     width: 367,
                    height: 500,
                  ),
                ),

                Positioned(
                    top: 276,
                    left: 165,
                    child: Text('please bet' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontSize: 12),)
                ),
                Positioned(
                    top: 290,
                    left: 180,
                    child: Text('$Time' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontSize: 24),)
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
                Positioned(
                  top: 115,
                  left: 160,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(1) ,
                    child: Image.asset(
                      'assets/food items/tomato.png',
                      width: 70,
                      height:50,
                    ),
                  ),
                ),
                Positioned(
                    top: 162,
                    left: 166,
                    child: Text('5 TIMES' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontSize: 14),)
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
                
                Positioned(
                  top: 160,
                  left: 267,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(1) ,
                    child: Image.asset(
                      'assets/food items/corn.png',
                      width: 50,
                      height:35,
                    ),
                  ),
                ),
                Positioned(
                    top: 195,
                    left: 266,
                    child: Text('5 TIMES' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontSize: 14),)
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

                Positioned(
                  top: 257,
                  left: 300,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(1) ,
                    child: Image.asset(
                      'assets/food items/carrot.png',
                      width: 50,
                      height:38,
                    ),
                  ),
                ),
                Positioned(
                    top: 292,
                    left: 293,
                    child: Text('5 TIMES' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontSize: 14),)
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
                Positioned(
                  top: 349,
                  left: 260,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(1) ,
                    child: Image.asset(
                      'assets/food items/cabbage.png',
                      width: 50,
                      height:38,
                    ),
                  ),
                ),
                Positioned(
                    top: 385,
                    left: 260,
                    child: Text('5 TIMES' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontSize: 14),)
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
                Positioned(
                  top: 376,
                  left: 162,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(1) ,
                    child: Image.asset(
                      'assets/food items/tuna.png',
                      width: 58,
                      height:50,
                    ),
                  ),
                ),
                Positioned(
                    top: 419,
                    left: 162,
                    child: Text('5 TIMES' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontSize: 14),)
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
                Positioned(
                  top: 345,
                  left: 75,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(1) ,
                    child: Image.asset(
                      'assets/food items/hot-dog.png',
                      width: 50,
                      height:38,
                    ),
                  ),
                ),
                Positioned(
                    top: 384,
                    left: 71,
                    child: Text('5 TIMES' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontSize: 14),)
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
                Positioned(
                  top: 255,
                  left: 40,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(1) ,
                    child: Image.asset(
                      'assets/food items/leg-piece.png',
                      width: 50,
                      height:38,
                    ),
                  ),
                ),
                Positioned(
                    top: 292,
                    left: 37,
                    child: Text('5 TIMES' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontSize: 14),)
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
                Positioned(
                  top: 142,
                  left: 69,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(1) ,
                    child: Image.asset(
                      'assets/food items/beef.png',
                      width: 54,
                      height:55,
                    ),
                  ),
                ),
                Positioned(
                    top: 188,
                    left: 70,
                    child: Text('5 TIMES' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontSize: 14),)
                ),
                //pizza
                Positioned(
                  top: 440,
                  left: 31,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(1) ,
                    child: Image.asset(
                      'assets/food items/pizza.png',
                      width: 54,
                      height:55,
                    ),
                  ),
                ),
                //salard
                Positioned(
                  top: 440,
                  left: 299,
                  child: GestureDetector(
                    onTap: ()=>setSelectedImage(1) ,
                    child: Image.asset(
                      'assets/food items/salard.png',
                      width: 54,
                      height:55,
                    ),
                  ),
                ),

                // Results bar
                Positioned(
                  top: 728,
                  left: 0,
                  child: Image.asset(
                    'assets/balance-board.png',
                    width: 500,
                    height:100,

                  ),
                ),
                Positioned(
                  top: 639,
                  left: 20,
                  right: 20,
                  child: Image.asset(
                    'assets/results-board.png',
                    width: 400,
                    height:100,

                  ),
                ),

                // 1st bet Button
                Positioned(
                  top: 545,
                  left: 50,

                  child: Image.asset(
                    'assets/diamond-frame-blue.png',
                    width: 60,
                    height:75,

                  ),
                ),

                Positioned(
                  top: 560,
                  left: 60,
                  child: Image.asset(
                    'assets/coin.png',
                    width: 40,
                    height:22,
                  ),
                ),
                Positioned(
                    top: 580,
                    left: 65,
                    child: Text('500' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.yellow[700] , fontSize: 18,))
                ),
                // 2nd bet button
                Positioned(
                  top: 545,
                  left: 123,

                  child: Image.asset(
                    'assets/diamond-frame-blue.png',
                    width: 60,
                    height:75,

                  ),
                ),
                Positioned(
                  top: 560,
                  left: 133,
                  child: Image.asset(
                    'assets/coin.png',
                    width: 40,
                    height:22,
                  ),
                ),
                Positioned(
                    top: 580,
                    left: 133,
                    child: Text('1000' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.yellow[700] , fontSize: 18),)
                ),
               // 3rd bet button
                Positioned(
                  top: 545,
                  left: 199,

                  child: Image.asset(
                    'assets/diamond-frame-blue.png',
                    width: 60,
                    height:75,

                  ),
                ),
                Positioned(
                  top: 560,
                  left: 209,
                  child: Image.asset(
                    'assets/coin.png',
                    width: 40,
                    height:22,
                  ),
                ),
                Positioned(
                    top: 580,
                    left: 209,
                    child: Text('5000' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.yellow[700] , fontSize: 18),)
                ),
                // 4th bet button
                Positioned(
                  top: 545,
                  left: 275,
                  child: Image.asset(
                    'assets/diamond-frame-blue.png',
                    width: 60,
                    height:75,

                  ),
                ),
                Positioned(
                  top: 560,
                  left: 285,
                  child: Image.asset(
                    'assets/coin.png',
                    width: 40,
                    height:22,
                  ),
                ),
                Positioned(
                    top: 580,
                    left: 279,
                    child: Text('10000' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.yellow[700] , fontSize: 18),)
                ),

                Positioned(
                  top: 767,
                  left: 119,
                  child: Image.asset(
                    'assets/coin.png',
                    width: 40,
                    height:22,
                  ),
                ),

                Positioned(
                  top: 767,
                  left: 278,
                  child: Image.asset(
                    'assets/coin.png',
                    width: 40,
                    height:22,
                  ),
                ),


                Positioned(
                  top: 520,
                  left: 90,
                  child: Text('Select bet Amount > Select Food' , style: TextStyle(fontWeight: FontWeight.bold),)
                  ),
                Positioned(
                    top: 765,
                    left: 28,
                    child: Text('BALANCE:' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white , fontSize: 18),)
                ),
                Positioned(
                    top: 760,
                    left: 160,
                    child: Text('$Balance' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.yellow[800] , fontSize: 24),)
                ),
                Positioned(
                    top: 760,
                    left: 320,
                    child: Text('$WinAmount' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.yellow[800] , fontSize: 24),)
                ),
                Positioned(
                    top: 765,
                    left: 235,
                    child: Text('WIN:' , style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white , fontSize: 18),)
                ),
              ],
            ),
          ),
        ),
      );
    }
 }



