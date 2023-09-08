import 'package:e_gem/Features/Home/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_gem/generated/assets.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  List<Widget> navScreens = const [
    Home(),

  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 75,
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          unselectedLabelStyle: TextStyle(
            color: Color(0xFF848484),
            fontSize: 12,
            fontFamily: GoogleFonts.openSans().fontFamily,
            fontWeight: FontWeight.w400,
          ),
          selectedItemColor: Color(0xFFBB2525),
          selectedLabelStyle: TextStyle(
            color: Color(0xFFBB2525),
            fontSize: 12,
            fontFamily: GoogleFonts.openSans().fontFamily,
            fontWeight: FontWeight.w600,
            height: 2.5,
          ),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          iconSize: 24,
          onTap: (value){
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: SvgPicture.asset(
              Assets.imagesHome,
              color: currentIndex == 0 ? Color(0xFFBB2525) : Color(0xff848484),

            ),label: "Home",),
            BottomNavigationBarItem(icon: SvgPicture.asset(
              Assets.imagesExercise,
              color: currentIndex == 1 ? Color(0xFFBB2525) : Color(0xff848484),

            ),label: "Exercise"),
            BottomNavigationBarItem(icon: SvgPicture.asset(
              Assets.imagesChat,
              color: currentIndex == 2 ? Color(0xFFBB2525) : Color(0xff848484),

            ),label: "Chat"),
            BottomNavigationBarItem(icon: SvgPicture.asset(
              Assets.imagesProfile,
              color: currentIndex == 3 ? Color(0xFFBB2525) : Color(0xff848484),

            ),label: "Profile"),

          ],
        ),
      ),
      body: navScreens[currentIndex],
    );
  }
}
