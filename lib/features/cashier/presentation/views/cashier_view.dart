import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/features/cashier/presentation/views/widgets/left_side/items_grid_view.dart';
import 'package:restaurant/features/cashier/presentation/views/widgets/left_side/row_actions.dart';
import 'package:restaurant/features/cashier/presentation/views/widgets/right_side/order_details.dart';

import 'widgets/right_side/customer_data.dart';
import 'widgets/right_side/four_main_categories.dart';
import 'widgets/right_side/order_items_list.dart';
import 'widgets/right_side/order_price_box.dart';

class CashierView extends StatelessWidget {
  const CashierView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration:  const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: ColorsManager.blueBackground,
            )
        ),
        child: Row(
          children: [
            Container(
              width: 396,
              color: ColorsManager.greyWhite,
              child: Column(
                children:
                [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 15.0,
                        left: 15.0,
                        top: 15.0,
                    ),
                    child: Column(
                      children: [
                        const FourMainCategories(),
                        const SizedBox(height: 15,),
                        CustomerData(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  const OrderDetails(),
                  const OrderPriceBox()
                ],
              ),
            ),
            const Expanded(
                child: Column(
                  children:
                  [
                    Expanded(child: ItemsGridView()),
                    ActionsRow()
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
