
import 'package:flutter/material.dart';
import 'package:treevade_flutter/constants/constants.dart';
class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBarTheme(
      data: BottomNavigationBarThemeData(
          backgroundColor:Constants().primaryColor.withOpacity(.9)
      ),
      child:BottomNavigationBar(
        selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w400, fontSize: 14),
        elevation: 010,
        showSelectedLabels: true,
        unselectedLabelStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.w400),
        selectedItemColor: Colors.white,
        iconSize: 20,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Explore",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),

              label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),

              label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined,),

              label: "Profile"),

        ],
        type: BottomNavigationBarType.fixed,
        onTap: (index) async {

        },
      ),

    );
  }
}
