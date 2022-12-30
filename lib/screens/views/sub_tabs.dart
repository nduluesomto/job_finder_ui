import 'package:flutter/material.dart';

class SubTab extends StatelessWidget {
  final String mainCategory;
  const SubTab({Key? key, required this.mainCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mainCategory,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Text(
            'View All',
            style: TextStyle(
                color: Colors.black45,
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
