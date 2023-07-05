import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'package:restaurant/features/cashier/data/models/models.dart';

class ItemGridViewBuilder extends StatelessWidget {
  const ItemGridViewBuilder({Key? key,
  required this.item,
  }) : super(key: key);

  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(item.image))
          ),
        ),
        Container(
            height: 50,
            color: ColorsManager.blue.withOpacity(0.5),
            padding: const EdgeInsets.all(5),
            child: Center(
              child: Text(
                item.name,
                style: item. name == 'سندوتش كبدة اسكندراني'  ?
                StyleManager.mainItemTitle.copyWith(fontSize: 15) :
                StyleManager.mainItemTitle,
              textAlign: TextAlign.center,),
            )
        )
      ],
    );
  }
}
