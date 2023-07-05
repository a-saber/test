import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/core/resources_manager/style_manager.dart';

class OrderPriceBox extends StatelessWidget {
  const OrderPriceBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     // height: 306,
        width: double.infinity,
        decoration:   const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: ColorsManager.blueBackground,
            ),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
          )
        ),
      child: Column(
        children:
        [
          Padding(
            padding: const EdgeInsets.only(
                right: 20.0,
                left: 20.0,
            top: 15,
            bottom: 10,
            ),
            child: Column(
              children:
              [
                Row(
                  children: [
                    Text('القيمة',style: StyleManager.orderPrice,),
                    const Spacer(),
                    Text('260.00',style: StyleManager.orderPrice,),
                    const SizedBox(width: 11,),
                    Text('جنيه',style: StyleManager.pound,),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Text('خدمة التوصيل',style: StyleManager.orderPrice,),
                    const Spacer(),
                    Text('20.00',style: StyleManager.orderPrice,),
                    const SizedBox(width: 11,),
                    Text('جنيه',style: StyleManager.pound,),
                  ],
                ),

                const SizedBox(height: 15,),
                Row(
                  children: [
                    Text('الاجمالي',
                      style: StyleManager.orderTotalPrice,),
                    const Spacer(),
                    Text('280.00',style: StyleManager.orderTotalPriceNumber,),
                    const SizedBox(width: 11,),
                    Text('جنيه',style: StyleManager.pound.copyWith(color: ColorsManager.red),),
                  ],
                ),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: 24.0,
                left: 24.0,
                bottom: 24.0
            ),
            child: Column(
              children:
              [
                Row(
                  children: [
                    DefaultButton(text: 'طلب جديد', onPressed: (){},),
                    const SizedBox(width: 15,),
                    DefaultButton(text: 'انهاء الطلب', onPressed: (){},),
                  ],
                ),
                const SizedBox(height: 24,),

                Row(
                  children: [
                    DefaultButton(text: 'تعديل الطلب', onPressed: (){},),
                    const SizedBox(width: 15,),
                    DefaultButton(text: 'الغاء الطلب', onPressed: (){},),
                  ],
                ),

              ],
            ),
          )
        ],
      ),

    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key,
  required this.text,
  required this.onPressed,
  }) : super(key: key);

  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 166,
      height: 39,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Center(child: Text(text,style: StyleManager.fourMainOptions,)),
      ),
    );
  }
}

