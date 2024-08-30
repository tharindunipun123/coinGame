import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LeaderBoard extends StatelessWidget {
  final List<Map<String, dynamic>> rankingData = [
    {'rank': 1, 'userId': 'User1', 'profilePic': 'assets/food items/tomato.png', 'totalWin': 1000},
    {'rank': 2, 'userId': 'User2', 'profilePic': 'assets/food items/tomato.png', 'totalWin': 950},
    {'rank': 3, 'userId': 'User3', 'profilePic': 'assets/food items/tomato.png', 'totalWin': 900},
    // Add more user data up to rank 10
    {'rank': 4, 'userId': 'User4', 'profilePic': 'assets/food items/tomato.png', 'totalWin': 850},
    {'rank': 5, 'userId': 'User5', 'profilePic': 'assets/food items/tomato.png', 'totalWin': 800},
    {'rank': 6, 'userId': 'User6', 'profilePic': 'assets/food items/tomato.png', 'totalWin': 750},
    {'rank': 7, 'userId': 'User7', 'profilePic': 'assets/food items/tomato.png', 'totalWin': 700},
    {'rank': 8, 'userId': 'User8', 'profilePic': 'assets/food items/tomato.png', 'totalWin': 650},
    {'rank': 9, 'userId': 'User9', 'profilePic': 'assets/food items/tomato.png', 'totalWin': 600},
    {'rank': 10, 'userId': 'User10', 'profilePic': 'assets/food items/tomato.png', 'totalWin': 550},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5), // Blurred background effect
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Leaderboard',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: rankingData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(rankingData[index]['profilePic']),
                            radius: 25,
                          ),
                          title: Text(
                            '${rankingData[index]['rank']}. ${rankingData[index]['userId']}',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Total Wins: \$${rankingData[index]['totalWin']}',
                            style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
                          ),
                          trailing: index < 3
                              ? CircleAvatar(
                            backgroundColor: Colors.yellow[100],
                            radius: 20,
                            child: Lottie.asset(
                              'assets/anim2.json', // Replace with your Lottie file path
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          )
                              : null, // Display the trophy animation for top 3 ranks only
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent, // Corrected color parameter
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
                child: Text(
                  'Close',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
