import 'package:flutter/material.dart';
import
'package:flutter_masonry_view/flutter_masonry_view.dart';
class PictureScreen extends StatelessWidget {
PictureScreen({super.key});
final _items = [
'assets/images/Nut1.png',
'assets/images/Nut2.png',
];

@override
Widget build(BuildContext context) {
return Padding(
padding: const EdgeInsets.all(8.0),
child: SingleChildScrollView(
child: MasonryView(
listOfItem: _items,
numberOfColumn: 2,
itemBuilder: (item) {
return Image.asset(item);
},
),
),
);
}
}