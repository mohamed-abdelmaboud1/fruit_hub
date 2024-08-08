import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.appBarTitle,
  });
  final String appBarTitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: GestureDetector(
        onTap: () {
          context.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      title: Text(
        appBarTitle,
        style: AppStyles.bold19,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
