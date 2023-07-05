import 'package:flutter/material.dart';
import 'four_main_categories_item_builder.dart';

class FourMainCategories extends StatelessWidget {
  const FourMainCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children:
        [
          FourMainCategoriesItemBuilder(
              text: 'تيك اواي',
              onTap: (){},
              selected: true
          ),
          const SizedBox(width: 8,),
          FourMainCategoriesItemBuilder(
              text: 'صالة',
              onTap: (){},
              selected: false
          ),
          const SizedBox(width: 8,),
          FourMainCategoriesItemBuilder(
              text: 'استلام',
              onTap: (){},
              selected: false
          ),
          const SizedBox(width: 8,),
          FourMainCategoriesItemBuilder(
              text: 'دليفري',
              onTap: (){},
              selected: false
          ),
        ],
      )
    );
  }
}
