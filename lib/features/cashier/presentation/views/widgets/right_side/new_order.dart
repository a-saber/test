import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class NewOrder extends StatelessWidget {
  const NewOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 75,
      decoration: const BoxDecoration(
          color: ColorsManager.red,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          )
      ),
      padding: const EdgeInsets.only(
          right: 20,
          left: 20,
          top: 10,
          bottom: 5.5
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
        [
          Row(
            children:
            [
              Text('طلب جديد',
                style: StyleManager.orderTitle,
              ),
              Spacer(),
              Text('#165',
                  style: StyleManager.orderTitle)
            ],
          ),
          Row(
            children:
            [
              Text('6/6/2023',style: StyleManager.orderDateTime,),
              const SizedBox(width: 10,),
              Text('PM 2:37',style: StyleManager.orderDateTime,),
            ],
          ),
        ],
      ),
    );
  }
}
