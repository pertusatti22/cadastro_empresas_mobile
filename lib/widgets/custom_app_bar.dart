import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:sistemadecadastro/theme/custom_colors.dart';

import '../theme/custom_images.dart';
import '../theme/custom_title.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(64.0);
}

class _CustomAppBarState extends State<CustomAppBar> {
  String searchValue = '';

  @override
  Widget build(BuildContext context) {
    return EasySearchBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            logo,
            height: 48,
          ),
          const SizedBox(
            width: 12.0,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
      backgroundColor: CustomColors.gray100,
      onSearch: (value) => setState(() => searchValue = value),
    );
  }
}
