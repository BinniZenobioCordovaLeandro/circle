import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
final Widget? leading;
final Widget? title  ;
  
  const AppBarWidget({
    Key? key, 
    this.leading, 
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: title,
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(56.0);
  }
}