import 'package:flutter/material.dart';
import 'package:flutter_application_tourisam/add.dart';
import 'package:flutter_application_tourisam/firstpage.dart';
import 'package:flutter_application_tourisam/like.dart';

// import 'package:flutter_application_tourisam/search.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List scern = [FirstPage(), Like(), Add()];
  ValueNotifier notifar = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: notifar,
        builder: (context, value, _) {
          return Scaffold(
            body: scern[value],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Color.fromARGB(255, 242, 238, 238),
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Seach'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_outline_sharp), label: 'Seach'),
              ],
              currentIndex: notifar.value,
              onTap: (value) {
                notifar.value = value;
              },
            ),
          );
        });
  }
}
