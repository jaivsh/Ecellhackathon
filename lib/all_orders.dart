import 'package:flutter/material.dart';
import 'google_sheets_api.dart'; // Import the GoogleSheetsApi class

class AllOrders extends StatefulWidget {
  const AllOrders({super.key});

  @override
  State<AllOrders> createState() => _AllOrdersState();
}

class _AllOrdersState extends State<AllOrders> {
  final GoogleSheetsApi googleSheetsApi = GoogleSheetsApi(); // Create an instance of GoogleSheetsApi

  List<Map<String, dynamic>> orders = []; // List to store fetched orders

  @override
  void initState() {
    super.initState();
    // Call the function to fetch orders when the widget is created
    _fetchOrders();
  }

  Future<void> _fetchOrders() async {
    try {
      // Fetch orders from Google Sheets
      final List<Map<String, dynamic>> fetchedOrders = await googleSheetsApi.getAllOrders();

      // Update the state with fetched orders
      setState(() {
        orders = fetchedOrders;
      });
    } catch (e) {
      // Handle error if any
      print('Error fetching orders: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Orders'),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          // Display each order as a ListTile
          return ListTile(
            title: Text('Order ID: ${orders[index]['Order_ID']}'),
            subtitle: Text('Department: ${orders[index]['Order_Department']}'),
            // Add more fields as needed
          );
        },
      ),
    );
  }
}
