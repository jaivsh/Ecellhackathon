import 'package:ecellhackathonapp/archived_app.dart';
import 'package:ecellhackathonapp/dashboard.dart';
import 'package:ecellhackathonapp/new_app.dart';
import 'package:ecellhackathonapp/pending_apps.dart';
import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';

class FacultyHomepage extends StatefulWidget {
  const FacultyHomepage({Key? key}) : super(key: key);

  @override
  State<FacultyHomepage> createState() => _FacultyHomepageState();
}

class _FacultyHomepageState extends State<FacultyHomepage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> views = [
      DashboardScreen(),
      NewAppScreen(),
      PendingAppsScreen(),
      ArchivedAppScreen(),
      Center(
        child: Text('Settings'),
      ),
      Center(
        child: Text('Settings'),
      ),
    ];

    return Scaffold(

      body: Row(
        children: [
          SideNavigationBar(
            footer: SideNavigationBarFooter(label: Text('@VNIT Nagpur', style: TextStyle(color: Colors.white),)),
            toggler: SideBarToggler(shrinkIcon: Icons.arrow_back_ios_new_rounded,),
            header: SideNavigationBarHeader(image: Image.asset('assets/images/logo_vnit.png', width: 100,height: 100,), title: Text('Yes Man', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ),), subtitle: Text('Mech Engineering Department',style: TextStyle(color: Colors.white),)),
            selectedIndex: selectedIndex,
            items: [

              SideNavigationBarItem(
                icon: Icons.dashboard,
                label: 'Homepage',
              ),
              SideNavigationBarItem(
                icon: Icons.person,
                label: 'New Application',
              ),
              SideNavigationBarItem(
                icon: Icons.pending_actions,
                label: 'Pending Applications',
              ),
              SideNavigationBarItem(
                icon: Icons.archive_rounded,
                label: 'Rejected Applications',
              ),
              SideNavigationBarItem(
                icon: Icons.history_edu,
                label: 'Your Orders',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Settings',
              ),

            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            theme: SideNavigationBarTheme(
              backgroundColor: Color(0xff1B374C),
              togglerTheme: SideNavigationBarTogglerTheme.standard(),
              itemTheme: SideNavigationBarItemTheme.standard(),
              dividerTheme: SideNavigationBarDividerTheme.standard(),
            ),
          ),
          Expanded(
            child: views[selectedIndex],
          ),

        ],
      ),
    );
  }
}
