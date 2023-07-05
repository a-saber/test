import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class RowActionBuilder extends StatelessWidget {
  const RowActionBuilder({Key? key,
  required this.text,
  required this.image,
  required this.onTap,
  }) : super(key: key);

  final String text;
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: 68,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorsManager.red,

              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: SvgPicture.asset(image),
            ),
          ),
          const SizedBox(height: 10,),
          Text(text,style: StyleManager.bottomActions,)
        ],
      ),
    );
  }
}
