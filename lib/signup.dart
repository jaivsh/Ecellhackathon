import 'package:ecellhackathonapp/main.dart';
import 'package:flutter/material.dart';

import 'faculty_homepage.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'SIGNUP',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 24.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
                  SizedBox(height: 16.0),
                  DropdownButton<String>(
                    hint: Text('Select your department'),
                    items: ['Computer Science and Engineering', 'Electronics and Communications Engineering', 'Electrical Engineering', 'Mechanical Engineering', 'Civil Engineering', 'Chemical Engineering','Metallurgical Engineering', 'Mining Engineering']
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
                  SizedBox(height: 15,),
                  DropdownButton<String>(
                    hint: Text('Sign Up As'),
                    items: ['Faculty', 'Head of Department(HOD)', 'Dean', 'Head of Store Section', 'Head of Accounts', ]
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
                      hintText: 'Name',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email Address(Academic)',
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
                  TextField(
                    keyboardType: TextInputType.phone,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                    ),
                  ),
                  SizedBox(height: 15,),
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => FacultyHomepage()));
                  }, child: Text('SIGNUP')),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyApp()));
                  }, child: Text('LOGIN'))
                ],),),)),
            ],
          ),));
  }
}
