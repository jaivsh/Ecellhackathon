import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';


class StoreSection extends StatefulWidget {
  const StoreSection({super.key});

  @override
  State<StoreSection> createState() => _StoreSectionState();
}

class _StoreSectionState extends State<StoreSection> {
  List<Widget> views = const [
    Center(
      child: Text('New'),
    ),
    Center(
      child: Text('Bid'),
    ),
    Center(
      child: Text('Sent'),
    ),
    Center(
      child: Text('Placed'),
    ),
  ];

  /// The currently selected index of the bar
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          /// Pretty similar to the BottomNavigationBar!
          SideNavigationBar(
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.dashboard,
                label: 'New Orders',
              ),
              SideNavigationBarItem(
                icon: Icons.person,
                label: 'Big Orders',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Sent Orders',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Placed Orders',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),

          /// Make it take the rest of the available width
          Expanded(
            child: views.elementAt(selectedIndex),
          )
        ],
      ),

    );
  }
}
