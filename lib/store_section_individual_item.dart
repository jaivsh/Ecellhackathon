import 'package:flutter/material.dart';

class SSIndividual extends StatefulWidget {
  const SSIndividual({super.key});

  @override
  State<SSIndividual> createState() => _SSIndividualState();
}

class _SSIndividualState extends State<SSIndividual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Column with 6 equally spaced containers
            Expanded(
              flex: 3, // Occupies 30% of the available width
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Container(
              width: 200.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                ),
                child: Center(
                  child: Text(
                    'Order Id: #123456',textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, ),
                  ),
                ),
              ),


                  Container(
                    width: 200.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                    ),
                    child: Center(
                      child: Text(
                        'Requesting Faculty: Professor X',textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 200.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                    ),
                    child: Center(
                      child: Text(
                        'Mechanical Engineering department',textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 200.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                    ),
                    child: Center(
                      child: Text(
                        'H.O.D. : Dr. Lulu Bichh',textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 200.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                    ),
                    child: Center(
                      child: Text(
                        'Proposed Expense: 100000/-',textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Center(
                      child: ElevatedButton(onPressed: () {}, child: Text('Upload Relevant Document(s)', textAlign: TextAlign.center,),)
                  ),
                ],
              ),
            ),

        Padding(
          padding: const EdgeInsets.all(16.0),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title Container
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Title',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16.0),

              // Description Container (Multiline)
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                constraints: BoxConstraints(maxWidth: 400.0), // Adjust maxWidth as needed
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'This is a multiline description. It can have multiple lines depending on the content. Adjust the maxWidth as needed.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16.0),

              // Remarks Container (Multiline)
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Remarks (Hint)',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),


            // Additional content if needed in the Row
            // Expanded(
            //   flex: 7, // Occupies 70% of the available width
            //   child: Container(
            //     color: Colors.grey,
            //     // Additional content
            //   ),
            // ),
          ],
        ),
      ),

    );

  }
  Widget generateContainerWithName(String name) {
    return Container(

      color: Colors.blue,
      child: Center(
        child: Text(
          name,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
