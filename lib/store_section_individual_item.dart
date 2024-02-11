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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Column with 6 equally spaced containers
            Expanded(
              flex: 3, // Occupies 30% of the available width
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  generateContainerWithName('Trimurti'),
                  generateContainerWithName('Trimurti'),
                  generateContainerWithName('Trimurti'),
                  generateContainerWithName('Trimurti'),
                  generateContainerWithName('Trimurti'),
                  generateContainerWithName('Trimurti'),
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
