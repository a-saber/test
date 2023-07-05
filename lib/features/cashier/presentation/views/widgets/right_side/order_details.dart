import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'package:restaurant/features/cashier/presentation/views/widgets/right_side/new_order.dart';

import 'order_items_list.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children:
        [
          NewOrder(),
          Expanded(child: OrderItemsList()),
        ],
      ),
    );
  }
}
