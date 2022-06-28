import 'package:flutter/material.dart';

class SwipeMarks extends StatelessWidget {
  final int currentPage;
  final double height;
  final double width;

  const SwipeMarks(
      {Key? key,
      required this.currentPage,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: currentPage == 0 ? Colors.orange : Colors.grey,
          ),
          width: width * 0.05,
          height: 4,
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: currentPage == 1 ? Colors.orange : Colors.grey,
          ),
          width: width * 0.05,
          height: 4,
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: currentPage == 2 ? Colors.orange : Colors.grey,
          ),
          width: width * 0.05,
          height: 4,
        ),
      ],
    );
    ;
  }
}
