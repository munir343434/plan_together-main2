import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackButtonPressed;
  final VoidCallback onMoreButtonPressed;
  final double? elevation;
  CustomAppBar({
    this.elevation=0.5,
    required this.title,
    required this.onBackButtonPressed,
    required this.onMoreButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.only(left: 20),
        child: InkWell(
          onTap: onBackButtonPressed,
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 21.88,
          color: Color(0xff101018),
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.more_vert_outlined,
            color: Colors.black,
          ),
          onPressed: onMoreButtonPressed,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
