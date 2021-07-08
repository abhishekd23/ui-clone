import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({
    required this.status,
    required this.subtitle,
    required this.colour,
    this.icons,
    this.iconData,
  });

  final String? status;
  final String? subtitle;
  final Icon? icons;
  final IconButton? iconData;
  final Color? colour;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: status == "In Progress" ? iconData : icons,
        radius: 20.0,
        backgroundColor: colour,
      ),
      title: Text(
        '$status',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 20.0,
        ),
      ),
      subtitle: Text(
        '$subtitle',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black54,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
