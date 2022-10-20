import 'package:flutter/material.dart';
import 'package:summit_ias/core/constant/colors.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarWidget({
    Key? key,
    this.title,
    this.actions,
    this.leading,
    this.elevation,
    this.backgroundColor = kAppBarColor,
    this.bottom,
    this.centerTitle = true,
    this.foregroundColor,
  }) : super(key: key);
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final double? elevation;
  final Color? backgroundColor;
  final PreferredSizeWidget? bottom;
  final bool? centerTitle;
  final Color? foregroundColor;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: elevation,
      leading: leading,
      title: title,
      centerTitle: centerTitle,
      foregroundColor: foregroundColor,
      bottom: bottom,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
