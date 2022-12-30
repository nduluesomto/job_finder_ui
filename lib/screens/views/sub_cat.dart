import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final imgPath;
  final String name;
  const Categories({Key? key, this.imgPath, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(11),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        children: [
          Image.asset(imgPath, width: 25, height: 30),
          const SizedBox(width: 5),
          Text(name),
        ],
      ),
    );
  }
}
