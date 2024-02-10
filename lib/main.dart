import 'package:ecellhackathonapp/faculty_homepage.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
                SizedBox(height: 16.0),
                DropdownButton<String>(
                  hint: Text('Department'),
                  items: ['Department A', 'Department B', 'Department C']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Handle dropdown value change if needed
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
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => FacultyHomepage()));
                }, child: Text('LOGIN'))
              ],),),)),
              ],
          ),)));
  }

}
