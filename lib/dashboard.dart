import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(this.context).size.width, height: MediaQuery.of(context).size.height,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          Text(
            'VISVESVARAYA NATIONAL INSTITUTE OF TECHNOLOGY',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF1B374C),
              fontSize: 40,
              fontFamily: 'Inika',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  color: Colors.white10,
                  height: MediaQuery.of(context).size.height/1.5,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'In-Progress Applications',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              double rectangleHeight = 50.0;
                              return Container(
                                height: rectangleHeight,
                                margin: EdgeInsets.symmetric(vertical: 8.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                // Add any content you want inside the rectangle
                                child: Center(
                                  child: Text(
                                    'Rectangle ${index + 1}',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16.0), // Add spacing between columns
              Expanded(
                child: Container(
                  color: Colors.white10,
                  height: MediaQuery.of(context).size.height/1.5,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Rejected Applications',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              double rectangleHeight = 50.0;
                              return Container(
                                height: rectangleHeight,
                                margin: EdgeInsets.symmetric(vertical: 8.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                // Add any content you want inside the rectangle
                                child: Center(
                                  child: Text(
                                    'Rectangle ${index + 1}',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16.0), // Add spacing between columns
              Expanded(
                child: Container(
                  color: Colors.white10,
                  height: MediaQuery.of(context).size.height/1.5,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Archived Applications',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              double rectangleHeight = 50.0;
                              return Container(
                                height: rectangleHeight,
                                margin: EdgeInsets.symmetric(vertical: 8.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                // Add any content you want inside the rectangle
                                child: Center(
                                  child: Text(
                                    'Rectangle ${index + 1}',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),)

        ],),
      ),
    );
  }
}
