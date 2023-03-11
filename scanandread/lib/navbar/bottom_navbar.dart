import 'package:flutter/material.dart';
import '../screens/hand_writing_recognition_page.dart';
import '../screens/home_screen.dart';
import '../screens/profile.dart';
import '../screens/scan_image.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;
  final screen =[
    HomeScreen(),
    ScanImage(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xFFAA6E6E), Color(0xFFAA6E6E)])
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: SizedBox(
            height: 56,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBottomBar1(
                    text: "Scan Text",
                    icon: Icons.text_fields_outlined,
                    selected: _selectedIndex == 0,
                    onPressed: (){
                      setState(() {
                        _selectedIndex = 0;
                      });
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));

                    },
                  ),
                  IconBottomBar1(
                    text: "Scan Image",
                    icon: Icons.image,
                    selected: _selectedIndex == 1,
                    onPressed: (){
                      setState(() {
                        _selectedIndex = 1;
                      });
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const ScanImage()));
                    },
                  ),
                  IconBottomBar1(
                    text: "Profile",
                    icon: Icons.person_outline,
                    selected: _selectedIndex == 2,
                    onPressed: (){
                      setState(() {
                        _selectedIndex = 2;
                      });
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
                    },
                  ),
                ],
              ),
            ),

          ),
        ),
      ),
      extendBodyBehindAppBar: true,

    );
  }
}

class BottomNavigationBar extends StatefulWidget {
  const BottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xff4338CA), Color(0xff6D28D9)])
      ),
      child: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: SizedBox(
          height: 56,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBottomBar1(
                  text: "Scan Text",
                  icon: Icons.text_fields_outlined,
                  selected: _selectedIndex == 0,
                  onPressed: (){
                    setState(() {
                      _selectedIndex = 0;
                    });
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));

                  },
                ),
                IconBottomBar1(
                  text: "Scan Image",
                  icon: Icons.image,
                  selected: _selectedIndex == 1,
                  onPressed: (){
                    setState(() {
                      _selectedIndex = 1;
                    });
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const ScanImage()));
                  },
                ),
                IconBottomBar1(
                  text: "Profile",
                  icon: Icons.person_outline,
                  selected: _selectedIndex == 2,
                  onPressed: (){
                    setState(() {
                      _selectedIndex = 2;
                    });
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
                  },
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}

class IconBottomBar1 extends StatelessWidget {

  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  const IconBottomBar1({
    required this.text,
    required this.icon,
    required this.selected,
    required this.onPressed,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(icon, size:25,color: selected ? Colors.white: Colors.grey)
        ),
        Text(text, style: TextStyle(
            fontSize: 12,
            height: .1,
            color: selected ? Colors.white: Colors.grey
        ),)
      ],
    );
  }
}


