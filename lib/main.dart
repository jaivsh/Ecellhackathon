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
          appBar: AppBar(title: Image.asset('assets/images/branding_top.png'), backgroundColor: Color(0xff1B374C),),
          body: Container(color: Color(0xfffeebdc),
            child: Center(child: Text('Loginpage')
          ),)));
  }

}
