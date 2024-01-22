import 'package:flutter/material.dart';

class MyCustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    // throw UnimplementedError();

    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final secondfirstCurve = Offset(0, size.height - 20);
    final secondlastCurve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondfirstCurve.dx, secondfirstCurve.dy,
        secondlastCurve.dx, secondlastCurve.dy);

    final thirdfirstCurve = Offset(size.width - 20, size.height);
    final thirdlastCurve = Offset(size.width - 20, 0);
    path.quadraticBezierTo(thirdfirstCurve.dx, thirdfirstCurve.dy,
        thirdlastCurve.dx, thirdlastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    // throw UnimplementedError();
    return true;
  }
}

// class CurvedClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();

//     // Create the curved path for the top
//     path.lineTo(0, size.height * 0.4);
//     path.quadraticBezierTo(
//       size.width / 4,
//       size.height * 0.35,
//       size.width / 2,
//       size.height * 0.4,
//     );
//     path.quadraticBezierTo(
//       size.width * 3 / 4,
//       size.height * 0.45,
//       size.width,
//       size.height * 0.4,
//     );

//     path.quadraticBezierTo(
//       size.width * 3 / 4,
//       size.height * 0.7,
//       size.width,
//       size.height,
//     );

//     path.lineTo(size.width, 0);

//     path.close(); // Close the path

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
