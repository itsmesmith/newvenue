import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomlistTile extends StatefulWidget {
  final String titles;
  final leadingbaccolor;
  final String image;
  final Widget? subtitles;
  final colour;
  final baccolour;
  final Widget? trail;
  final bool titlebold;
  final VoidCallback? onTap;
  final TextStyle? titlestyle;
  final double leadingconborderradii;

  const CustomlistTile({
    Key? key,
    required this.titles,
    required this.image,
    this.subtitles,
    this.colour,
    this.baccolour,
    this.trail,
    this.titlebold = false,
    this.onTap,
    this.titlestyle,
    this.leadingbaccolor,
    this.leadingconborderradii = 8,
  }) : super(key: key);

  @override
  _CustomlistTileState createState() => _CustomlistTileState();
}

class _CustomlistTileState extends State<CustomlistTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: widget.baccolour,
      ),
      child: ListTile(
        onTap: widget.onTap,
        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
        dense: true,
        leading: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.leadingconborderradii),
            color: widget.leadingbaccolor,
          ),
          child: SvgPicture.asset(
            widget.image,
            color: widget.colour,
            height: 30,
            width: 30,
          ),
        ),
        title: Text(
          widget.titles,
          style: widget.titlestyle ?? TextStyle(fontSize: widget.titlebold == false ? 12 : 14, fontFamily: widget.titlebold == false ? 'Airbnb Cereal book' : 'Airbnb Cereal Bold'),
        ),
        subtitle: widget.subtitles!,
        trailing: widget.trail,
      ),
    );
  }
}
