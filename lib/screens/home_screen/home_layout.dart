import 'package:flutter/material.dart';
import 'package:up_care_v1/screens/chat_screen/chat_screen_view.dart';
import 'package:up_care_v1/screens/history_screen/history_screen_view.dart';
import 'package:up_care_v1/screens/home_screen/home_screen_view.dart';
import 'package:up_care_v1/screens/schedule_screen/schedule_screen_view.dart';
import 'package:up_care_v1/screens/settings_screen/settings_screen_view.dart';

class HomeLayout extends StatefulWidget {
   const HomeLayout({super.key});

  static const routeName = 'home_layout';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;

  List<Widget> screens =  [
    const HomeScreenView(),
    const ScheduleScreenView(),
    const ChatScreenView(),
    HistoryScreenView(),
    const SettingsScreenView(),
   ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(45),topLeft: Radius.circular(45)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          iconSize: 30,
          selectedIconTheme: const IconThemeData(
            color: Color(0xFF62B1FB),

          ),
          selectedItemColor: Colors.grey,
          unselectedIconTheme: const IconThemeData(
            color: Colors.grey,

          ),
          unselectedItemColor: Colors.transparent,
          currentIndex: selectedIndex,
          onTap: (int index){

            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(7.0),
                child: ImageIcon(
                  AssetImage("assets/images/home.png"),

                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(7.0),
                child: ImageIcon(
                  AssetImage("assets/images/calender.png"),

                ),
              ),
              label: "Schedule",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(7.0),
                child: ImageIcon(
                  AssetImage("assets/images/chat.png"),

                ),
              ),
              label: "Chat",
            ),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(7.0),
                  child: ImageIcon(
                    AssetImage("assets/images/user.png"),

                  ),
                ),
                label: "History"),
            BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Icon(Icons.settings)
                ),
                label: "Settings"),
          ],
        ),
      ),
    );
  }
}
