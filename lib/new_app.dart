import 'package:flutter/material.dart';

class NewAppScreen extends StatefulWidget {
  const NewAppScreen({super.key});

  @override
  State<NewAppScreen> createState() => _NewAppScreenState();
}

class _NewAppScreenState extends State<NewAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title Text Field
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Title',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),

            // Description Text Field
            Expanded(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: null,
                    expands: true,
                    decoration: InputDecoration(
                      hintText: 'Description',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),

            // Upload Images Button
            ElevatedButton(
              onPressed: () {
                // Add your functionality for Upload Images button
              },
              child: Text('Upload Images'),
            ),
            SizedBox(height: 16.0),

            // Continue Button (with enable/disable logic)
            ElevatedButton(
              onPressed: false ? () {} : null,
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
