import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideMenuList extends StatelessWidget {
  final String? title;
  final Icon? titleIcon;
  final String? pagePath;

  const SideMenuList({super.key, this.title, this.titleIcon, this.pagePath});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("$title"),
      leading: titleIcon,
      onTap: () {
        context.push(pagePath!);
      },
    );
  }
}
