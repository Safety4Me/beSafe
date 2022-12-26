import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final double toolbarHeight;
  final Widget title;
  final Widget? leading;
  final bool? automaticallyImplyLeading;
  final List<Widget>? actions;

  const AppBarWidget({
    Key? key,
    required this.toolbarHeight,
    required this.title,
    this.automaticallyImplyLeading,
    this.actions,
    this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      title: title,
      leading: leading,
      actions: actions,
      automaticallyImplyLeading:
          automaticallyImplyLeading == null ? true : automaticallyImplyLeading!,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
