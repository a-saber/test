import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';
import 'package:restaurant/features/cashier/data/models/models.dart';
import 'package:restaurant/features/cashier/presentation/cubit/cashier_cubit.dart';

class OrderItemBuilder extends StatelessWidget {
  const OrderItemBuilder({
    Key? key,
    required this.item,
    required this.index,
  }) : super(key: key);

  final int index;
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children:
        [
          Row(
            children:
            [
              IconButton(
                  onPressed: ()
                  {
                    CashierCubit.get(context).deleteItemFromOrder(index: index);
                  },
                  icon: SvgPicture.asset(AssetsManager.delete)
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Text(
                  item.name,
                  style: StyleManager.itemName,
                  textAlign: TextAlign.start,
                ),
              ),

              Container(
                height: 30,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: ColorsManager.red
                  )
                ),
                child: Row(
                  children:
                  [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: ColorsManager.red,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                             Icon(Icons.keyboard_arrow_up,size: 12,color: Colors.white,),
                              Icon(Icons.keyboard_arrow_down,size: 12,color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Text('2',style: StyleManager.itemCount,textAlign: TextAlign.center,))

                  ],
                ),
              ),

              const SizedBox(width: 11,),
              Text('${item.price}',style: StyleManager.itemPrice,),
              const SizedBox(width: 9,),
              IconButton(onPressed: (){}, icon: SvgPicture.asset(AssetsManager.plus))



            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 35.0),
            child: Row(
              children:
              [
                ItemExtra(),
                SizedBox(width: 10,),
                ItemExtra(),
                SizedBox(width: 10,),
                ItemExtra(icon: AssetsManager.cheese),
                SizedBox(width: 10,),
                ItemExtra(icon: AssetsManager.spicy),
              ],
            ),
          ),
          SizedBox(height: 5,)
        ],
      ),
    );
  }
}

class ItemExtra extends StatelessWidget {
  const ItemExtra({Key? key,
   this.icon}) : super(key: key);

  final String? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorsManager.red
        ),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Center(
        child: icon == null? const SizedBox() :
        SvgPicture.asset(icon!),
      ),
    );
  }
}
