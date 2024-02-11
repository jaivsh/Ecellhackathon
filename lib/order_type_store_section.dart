import 'package:ecellhackathonapp/store_section_individual_item.dart';
import 'package:flutter/material.dart';

class OTSS extends StatefulWidget {
  const OTSS({super.key});

  @override
  State<OTSS> createState() => _OTSSState();
}

class _OTSSState extends State<OTSS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Center(child: Text('Order ID: #123456', style: TextStyle(fontWeight: FontWeight.bold),),),
            //SizedBox(height: 10,),
            // Search Bar
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  // Search Logo
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  // Search TextField
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  // Search Button
                  IconButton(
                    onPressed: () {
                      // Add your functionality for the search button
                    },
                    icon: Icon(Icons.search),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),

            // Filter Button
            ElevatedButton.icon(
              onPressed: () {
                // Show filter options in a full-screen dialog
                showFilterOptionsDialog(context);
              },
              icon: Icon(Icons.filter_list),
              label: Text('Filter'),
            ),
            SizedBox(height: 16.0),

            // List of Curved Rectangles
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Replace with the actual number of rectangles
                itemBuilder: (context, index) {
                  return GestureDetector(onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SSIndividual()));

                  },child:Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 50.0,
                    // Add any content you want inside the rectangle
                    child: Center(
                      child: Text(
                        'Rectangle ${index + 1}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ));
                },
              ),
            ),
          ],
        ),
      ),

    );
  }

  // Function to show filter options dialog
  void showFilterOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Filter Options'),
          content: Text('Add your filter options here'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
