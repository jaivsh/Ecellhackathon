import 'package:flutter/material.dart';

class ApproveOrder extends StatefulWidget {
  const ApproveOrder({super.key});

  @override
  State<ApproveOrder> createState() => _ApproveOrderState();
}

class _ApproveOrderState extends State<ApproveOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Center(child: Text('Order ID: #123456', style: TextStyle(fontWeight: FontWeight.bold),),),
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
                    //controller: controller2,
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
                  //controller: controller3,
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
                 // controller: controller4,
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

            SizedBox(height: 6.0),

            // Continue Button (with enable/disable logic)
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),onPressed: () {}, child: Text('Reject')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {}, child: Text('Approve'))
          ],
        ),
      ),
    );
  }
}
