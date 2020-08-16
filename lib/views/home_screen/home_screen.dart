import 'package:flutter/material.dart';
import 'package:flutter_login_signup/utils/constants.dart';
import 'package:flutter_login_signup/utils/string_constants.dart';
import 'package:flutter_login_signup/views/home_screen/components/body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeScreen>{
  int selected = 0;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(height: 150),
      bottomNavigationBar: _buildBottomNavigation(),
      body: Body(),

    );
  }

  Widget _buildBottomNavigation() {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 8,
      child: Container(
        height: 56,
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(child: BottomNavigationIcon(icon: Icons.home, isSelected: selected == 0,),
              onTap: () {
                setState(() {
                  selected = 0;
                });
              },
            ),
            GestureDetector(child: BottomNavigationIcon(icon: Icons.search, isSelected: selected == 1,),
              onTap: () {
                setState(() {
                  selected = 1;
                });
              },
            ),
            GestureDetector(child: BottomNavigationIcon(icon: Icons.list, isSelected: selected == 2,),
              onTap: () {
                setState(() {
                  selected = 2;
                });
              },
            ),
            GestureDetector(child: BottomNavigationIcon(icon: Icons.person, isSelected: selected == 3,),
              onTap: () {
                setState(() {
                  selected = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
  
}

class BottomNavigationIcon extends StatelessWidget {
  final bool isSelected;
  final IconData icon;

  const BottomNavigationIcon({Key key, this.isSelected = false, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: Duration(
      milliseconds: 300,),
      height: isSelected ? 30 : 25,
      width: isSelected ? 30 : 25,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: isSelected ? 4 : 0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: isSelected ? [Colors.blue.shade900,Colors.purpleAccent.shade400]
            : [Colors.white, Colors.white]
        ),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: isSelected ? Colors.white : Colors.grey.shade500),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  final double height;

  MyAppBar({Key key, @required this.height}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConstants.home, style: TextStyle(color: Colors.white),),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:10.0),
            child: Icon(Icons.power_settings_new, color: Colors.white,),
          ),
        ],
        backgroundColor: mPrimaryColor,
        elevation: 50.0,
        leading: Icon(Icons.menu, color: Colors.white,),
      ),

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}



