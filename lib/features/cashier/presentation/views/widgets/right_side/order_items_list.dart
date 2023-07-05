import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/features/cashier/presentation/cubit/cashier_cubit.dart';
import 'package:restaurant/features/cashier/presentation/cubit/cashier_states.dart';

import 'order_item_builder.dart';

class OrderItemsList extends StatelessWidget {
  const OrderItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CashierCubit, CashierStates>(
        builder: (context, state)
        {
          if(CashierCubit.get(context).order == null )
          {
            return SizedBox();
          }
          else
          {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index)=> Column(
                children:
                [
                  OrderItemBuilder(
                      item: CashierCubit.get(context).order!.items[index],
                    index: index,
                  ),

                  Container(
                    height: 1,
                    width: 304,
                    decoration: BoxDecoration(
                      color: ColorsManager.yellow,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    margin: const EdgeInsets.all(1),
                  )
                ],
              ),
              itemCount: CashierCubit.get(context).order!.items.length,
            );
          }


        }, listener: (context, state){}
    );
  }
}
