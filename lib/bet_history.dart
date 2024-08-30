import 'package:flutter/material.dart';

class BetHistory extends StatelessWidget {
  final List<Map<String, dynamic>> betHistoryData = [
    {'round': 1, 'betAmount': 500, 'dateTime': '2024-08-30 14:00'},
    {'round': 2, 'betAmount': 1000, 'dateTime': '2024-08-30 15:00'},
    {'round': 3, 'betAmount': 750, 'dateTime': '2024-08-29 16:30'},
    {'round': 4, 'betAmount': 500, 'dateTime': '2024-08-30 14:00'},
    {'round': 5, 'betAmount': 1000, 'dateTime': '2024-08-30 15:00'},
    {'round': 6, 'betAmount': 750, 'dateTime': '2024-08-29 16:30'},
    // Add more bet history data
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5), // Blurred background effect
      body: Center(
        child: SingleChildScrollView(
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
                    'Bet History',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.06, // Responsive text size
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                // Filter options
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Implement filter by date logic here
                        },
                        icon: Icon(Icons.calendar_today, size: 16),
                        label: Text(
                          "Filter by Date",
                          style: TextStyle(fontSize: 14), // Smaller font size
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8), // Smaller padding
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Implement filter by month logic here
                        },
                        icon: Icon(Icons.calendar_view_month, size: 16),
                        label: Text(
                          "Filter by Month",
                          style: TextStyle(fontSize: 14), // Smaller font size
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8), // Smaller padding
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: betHistoryData.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            leading: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  '${betHistoryData[index]['round']}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery.of(context).size.width * 0.04, // Responsive text size
                                  ),
                                ),
                              ),
                            ),
                            title: Text(
                              'Bet Amount: \$${betHistoryData[index]['betAmount']}',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.width * 0.045, // Responsive text size
                              ),
                            ),
                            subtitle: Text(
                              'Date & Time: ${betHistoryData[index]['dateTime']}',
                              style: TextStyle(
                                color: Colors.yellowAccent,
                                fontSize: MediaQuery.of(context).size.width * 0.035, // Responsive text size
                              ),
                            ),
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
                    backgroundColor: Colors.blueAccent,
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
      ),
    );
  }
}
