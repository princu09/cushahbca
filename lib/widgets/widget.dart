import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 28),
        children: <TextSpan>[
          TextSpan(
              text: 'C.U.Shah',
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.black54)),
          TextSpan(
              text: 'BCA',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.blue)),
        ],
      ),
    );
  }
}

Widget blueButton({BuildContext context, String lable, buttonWidth}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 18),
    child: Text(
      "Login",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
  );
}
