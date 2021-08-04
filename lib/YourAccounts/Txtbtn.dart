import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TxtBtn extends StatelessWidget {
  final String txt;
  final VoidCallback? onPressed;
  final Colour;
  final double borderwidth;
  final double btnheight;
  final txtcolour;
  const TxtBtn({Key? key, required this.txt, this.onPressed, this.Colour, this.borderwidth = 1, this.txtcolour = Colors.black, this.btnheight = 40}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(canvasColor: Colors.transparent),
        child: TextButton(
            onPressed: onPressed,
            child: Text(
              txt,
              style: TextStyle(fontFamily: 'Airbnb Cereal Medium', fontSize: 14, color: txtcolour),
            ),
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                backgroundColor: Colour,
                side: BorderSide(color: Colors.black, width: borderwidth),
                minimumSize: Size(double.infinity, btnheight))));
  }
}
