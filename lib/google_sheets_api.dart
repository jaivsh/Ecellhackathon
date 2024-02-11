import 'dart:convert';
import 'package:http/http.dart' as http;

class GoogleSheetsApi {
  static const String baseUrl = 'YOUR_GOOGLE_SHEETS_APP_SCRIPT_URL'; // Replace with your actual Google Sheets App Script URL

  Future<List<Map<String, dynamic>>> getAllOrders() async {
    final response = await http.get(Uri.parse('$baseUrl?method=getAllOrders'));

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the data
      final List<dynamic> data = json.decode(response.body);
      return List<Map<String, dynamic>>.from(data);
    } else {
      // If the server did not return a 200 OK response,
      // throw an exception.
      throw Exception('Failed to load orders');
    }
  }

  Future<Map<String, dynamic>> postOrder(Map<String, dynamic> orderData) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      body: orderData,
    );

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the data
      return json.decode(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // throw an exception.
      throw Exception('Failed to post order');
    }
  }
}
