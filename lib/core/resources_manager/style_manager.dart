import 'package:flutter/material.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';

abstract class StyleManager {
  static const TextStyle fourMainCategories = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 20,
    color: Colors.black,
  );

  static const TextStyle threeMainInputs = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: Colors.white,
    height: 1
  );

  static const TextStyle orderTitle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: Colors.white,
  );

  static const TextStyle orderDateTime = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 16,
    color: Colors.white,
  );

  static const TextStyle itemName = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 14,
    color: Colors.black,
  );

  static const TextStyle itemPrice = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: Colors.black,
  );

  static const TextStyle itemCount = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: Colors.black,
  );

  static TextStyle orderPrice = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 28,
    color: ColorsManager.offWhite,
  );

  static TextStyle orderPriceNumber = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: ColorsManager.offWhite,
  );

  static TextStyle orderTotalPrice = const TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 36,
    color: Colors.white,
  );

  static TextStyle orderTotalPriceNumber = const TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 32,
    color: ColorsManager.red,
  );

  static TextStyle pound = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 24,
    color: ColorsManager.offWhite,
  );

  static const TextStyle fourMainOptions =  TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 24,
    color: Colors.black,
  );

  static const TextStyle mainItemTitle =  TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: Colors.white,
    height: 1
  );

  static const TextStyle bottomActions =  TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: ColorsManager.red,
      height: 1
  );

  static const TextStyle extra =  TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 18,
    color: Colors.black,
  );

  static const TextStyle region =  TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: Colors.black,
  );

  static const TextStyle save =  TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: Colors.white,
  );

  static const TextStyle search =  TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: ColorsManager.anotherGrey,
  );

  static const TextStyle regionName =  TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: Colors.black,
  );


}
