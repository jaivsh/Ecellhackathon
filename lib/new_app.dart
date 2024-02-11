import 'package:ecellhackathonapp/approve_order.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class NewAppScreen extends StatefulWidget {
  const NewAppScreen({super.key});

  @override
  State<NewAppScreen> createState() => _NewAppScreenState();
}

class _NewAppScreenState extends State<NewAppScreen> {
  Random rand_id = new Random();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rand_id = Random();
  }

  TextEditingController controller1 = new TextEditingController();
  TextEditingController controller2 = new TextEditingController();

  TextEditingController controller3 = new TextEditingController();

  TextEditingController controller4 = new TextEditingController();

  TextEditingController controller5 = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Center(child: Text('Order ID: #${rand_id.nextInt(1000000)}', style: TextStyle(fontWeight: FontWeight.bold),),),
            SizedBox(height: 10,),
            // Title Text Field
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controller1,
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
                    controller: controller2,
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
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controller3,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Approximate Cost',
                    border: InputBorder.none,

                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controller4,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Remark(s)',
                    border: InputBorder.none,

                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),


            // Upload Images Button

            SizedBox(height: 16.0),

            // Continue Button (with enable/disable logic)
            ElevatedButton(
              onPressed: controller1.text == '' && controller2.text == '' && controller3.text == '' && controller4.text == '' ?() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ApproveOrder()));
              } : () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ApproveOrder()));
              },
              child: Text('Send to H.O.D. for Review'),
            ),
          ],
        ),
      ),
    );
  }
}
