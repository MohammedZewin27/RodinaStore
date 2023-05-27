import 'package:flutter/material.dart';
import 'package:rodinakids/style/colors.dart';

class HomeLayoutScreen extends StatelessWidget {
  const HomeLayoutScreen({Key? key}) : super(key: key);
static const String routeName='HomeLayout';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
      ),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed ,
        onTap: (index){},
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: '',backgroundColor: BUTTONCOLOR,),
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: '',backgroundColor: BUTTONCOLOR1),
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: '',backgroundColor: BUTTONCOLOR2),
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: '',backgroundColor: BUTTONCOLOR3),



          ]),
    );
  }
}
