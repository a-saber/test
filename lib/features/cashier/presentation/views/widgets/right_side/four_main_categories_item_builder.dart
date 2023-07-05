import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class FourMainCategoriesItemBuilder extends StatelessWidget {
  const FourMainCategoriesItemBuilder({
    Key? key,
    required this.text,
    required this.onTap,
    required this.selected,
  }) : super(key: key);

  final String text;
  final void Function()? onTap;
  final bool selected;
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
         // width: 85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: selected ?
            ColorsManager.red:
            Colors.white
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 2,
            vertical: 5
          ),
          child: Center(
            child: Text(
              text,
              style: selected ?
              StyleManager.fourMainCategories.copyWith(color: Colors.white):
              StyleManager.fourMainCategories,
            ),
          ),
        ),
      ),
    );
  }
}
