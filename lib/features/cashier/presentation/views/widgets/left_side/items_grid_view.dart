import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/features/cashier/presentation/cubit/cashier_cubit.dart';

import 'item_grid_view_builder.dart';

class ItemsGridView extends StatelessWidget {
  const ItemsGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double itemWidth = (width-396-48-(8*10))/8;
    print(itemWidth);

    return GridView.count(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 24),
      shrinkWrap: true,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      childAspectRatio: itemWidth / 150,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount:
      8,
      //(MediaQuery.of(context).size.width/150).round(),
      children: List.generate(
        CashierCubit.get(context).items.length,
            (index) => InkWell(
              onTap: ()
              {
                CashierCubit.get(context).addItemToOrder(
                    item: CashierCubit.get(context).items[index]
                );
              },
              child:
              ItemGridViewBuilder(
                  item: CashierCubit.get(context).items[index],
              ),
        ),
      ),
    );
  }
}


/*
CachedNetworkImage(
              imageBuilder: (context, imageProvider) => Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ),
              placeholder: (context, error) => const Icon(
                Icons.image_outlined,
                color: Colors.grey,
              ),
              fit: BoxFit.fill,
              imageUrl: AppCubit.get(context).images[index],
              //imageUrl: "https://media-afr-cdn.oriflame.com/contentImage?externalMediaId=885528a5-42dc-4759-9016-3945a9287e43&name=mango&inputFormat=png",
              errorWidget: (context, url, error) =>
              const Icon(Icons.error_outline)
          )
 */