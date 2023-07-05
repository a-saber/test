import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/features/cashier/presentation/views/widgets/left_side/row_action_builder.dart';

class ActionsRow extends StatelessWidget {
  const ActionsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      child: Row(
        children:
        [
          RowActionBuilder(text: 'خروج', image: AssetsManager.exit, onTap: (){}),
          const Spacer(),
          RowActionBuilder(text: 'حضور وانصراف', image: AssetsManager.attendLeave, onTap: (){}),
          const SizedBox(width: 15,),
          RowActionBuilder(text: 'فواتير اليوم', image: AssetsManager.dayBills, onTap: (){}),
          const SizedBox(width: 15,),
          RowActionBuilder(text: 'مخازن', image: AssetsManager.store, onTap: (){}),
          const SizedBox(width: 15,),
          RowActionBuilder(text: 'مطبخ', image: AssetsManager.chef, onTap: (){}),
          const SizedBox(width: 15,),
          RowActionBuilder(text: 'كاشير', image: AssetsManager.cashier, onTap: (){}),

        ],
      ),
    );
  }
}
