import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Custom AppBar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color bgcolor;
  final double size;
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.bgcolor,
    required this.size,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: bgcolor,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size);
}
