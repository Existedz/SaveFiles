import 'package:navbar/screens/picture_screen.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
class HomeScreen extends StatefulWidget {
const HomeScreen({super.key});
@override
State<HomeScreen> createState() =>
_HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int _currentIndex = 0;
List<Widget> body = [
const Icon(Icons.home),
PictureScreen(),
// Icon(Icons.add_photo_alternate_outlined),
const Icon(Icons.person),
];
@override
Widget build(BuildContext context) {
return Scaffold(
body: Center(child: body[_currentIndex],),
bottomNavigationBar: BottomNavigationBar(
backgroundColor: backgroundColorLight2.withOpacity(0.5),
fixedColor: textColorPrimary,
currentIndex: _currentIndex,
onTap: (int newIndex) {
setState(() {
_currentIndex = newIndex;
});
},
items: const [
BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
BottomNavigationBarItem(icon:
Icon(Icons.add_photo_alternate_outlined),label: 'Picture'),
BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
],
),
);
}
}