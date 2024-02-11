import 'package:ecellhackathonapp/faculty_homepage.dart';
import 'package:ecellhackathonapp/order_type_store_section.dart';
import 'package:ecellhackathonapp/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'all_orders.dart'; // Import the AllOrders widget
import 'google_sheets_api.dart'; // Import the GoogleSheetsApi class

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //final gsheets = GSheets(credentials);
  //final ss =  await gsheets.spreadsheet(spreadsheetid);
  //var sheet = ss.workSheetByTitle('Sheet1');
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home:MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String proftype = 'Faculty';
  String department = 'Computer Science and Engineering';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Image.asset('assets/images/branding_top.png',width:400,height:100 ), backgroundColor: Color(0xff1B374C),),
          body: Container(color: Color(0xffffffff),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Container(height: MediaQuery.of(this.context).size.height,width: MediaQuery.of(this.context).size.width/2,color: Color(0xff1B374C),child:Column(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Start your new journey with us and join our community',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Image.asset('assets/images/logo_vnit.png')
                ],),),
              Material(elevation: 20,child:Container(color: Colors.white,height: MediaQuery.of(this.context).size.height,width: MediaQuery.of(this.context).size.width/2,child: Padding(padding: EdgeInsets.all(25),child:Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 24.0,
                  decoration: TextDecoration.underline,
                ),
              ),
                DropdownButton<String>(
                  value: department,
                  hint: Text('Select your department'),
                  items: [
                    'Computer Science and Engineering',
                    'Electronics and Communications Engineering',
                    'Electrical Engineering',
                    'Mechanical Engineering',
                    'Civil Engineering',
                    'Chemical Engineering',
                    'Metallurgical Engineering',
                    'Mining Engineering'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                     department = newValue!;
                    });
                    // Handle dropdown value change if needed
                    print('Selected Department: $newValue');
                  },
                ),
                SizedBox(height: 15,),
                DropdownButton<String>(
                  value: proftype,
                  hint: Text('Select your Designation'),
                  items: [
                    'Faculty',
                    'Head of Department(HOD)',
                    'Dean',
                    'Head of Store Section',
                    'Head of Accounts',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      proftype = newValue!;
                    });
                    // Handle dropdown value change if needed
                    print('Selected Designation: $newValue');
                  },
                ),
                SizedBox(height: 16.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              SizedBox(height: 15,),
                ElevatedButton(onPressed: () {
                  if(proftype == 'Faculty'){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => OTSS()));
                  }
                  else {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => FacultyHomepage()));
                  }
                }, child: Text('LOGIN')),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignupScreen()));
                }, child: Text('SIGNUP'))
              ],),),)),
              ],
          ),)));
  }

}

