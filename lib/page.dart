import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Grid Veiw",style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.pink,
      ),
      body: MasonryGridView.builder(
        itemCount: image.length,
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
         itemBuilder: (context, index) =>
         Padding(
           padding: const EdgeInsets.all(2.0),
           child: Image.asset(image[index]),
         ),
         ),
    );
  }
}
final List image=[
  "images/neymar.1.webp",
  "images/barca.jpg",
  "images/r10.jpg",
  "images/avatar.1.jpg",
  "images/AVATAR.2.jpg",
  "images/avg.1.jpg",
  "images/avg.3.jpg",
  "images/avg.4.jpg",
  "images/avg.5.jpg",
];