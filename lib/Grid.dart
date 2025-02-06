// import 'package:flutter/material.dart';
//
// class Grid extends StatelessWidget {
//   const Grid({super.key});
//    height = MediaQuery.of(context).size.height / 2;
//   var width = MediaQuery.of(context).size.width;
//   var maxSize = height > width ? width : height;
//   var boxSize = (maxSize / 3).ceil().toDouble();
//   var gridSize = boxSize *3;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: gridSize,
//       width: gridSize,
//       child:
//       GridView.count(
//         crossAxisCount: 3,
//         children: List.generate(9, (x) {
//           return Container(
//             width: boxSize,
//             height: boxSize,
//             decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
//           );
//         }),
//       ),
//     );
//   }
// }