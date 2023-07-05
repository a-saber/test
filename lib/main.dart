import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/core/resources_manager/colors_manager.dart';
import 'package:restaurant/features/cashier/presentation/cubit/cashier_cubit.dart';
import 'package:restaurant/features/cashier/presentation/views/cashier_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers:
        [
          BlocProvider(create: (context)=> CashierCubit())
        ],
        child: GetMaterialApp(
            title: 'Restaurant',
            theme: ThemeData(
              fontFamily: 'Tajawal',
            ),
            locale: Locale('ar'),
            debugShowCheckedModeBanner: false,
            home: const CashierView()
        )
    );

  }
}

