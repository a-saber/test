import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/core/resources_manager/assets_manager.dart';
import 'package:restaurant/features/cashier/data/models/models.dart';

import 'cashier_states.dart';

class CashierCubit extends Cubit<CashierStates> {
  CashierCubit() : super(CashierInitialState());
  static CashierCubit get(context) => BlocProvider.of(context);

  // right side
  bool takeAway = false;
  bool delivery = false;
  bool receive = false;
  bool hall = false;


  // left side
  OrderModel? order;
  void addItemToOrder({ required ItemModel item})
  {
    if(order == null)
    {
      order = OrderModel(
          number: '123',
          price: 0,
          items:
          [
            item
          ]
      );
    }
    else
    {
      order!.items.add(item);
    }
    emit(CashierAddItemToOrderState());
  }

  void deleteItemFromOrder({ required int index})
  {
    order!.items.removeAt(index);
    emit(CashierDeleteItemFromOrderState());
  }

  List<ItemModel> items =
  [
    ItemModel(name: 'مكرونة بالكبدة', price: 30, extras: [], image: AssetsManager.pasta),
    ItemModel(name: 'مكرونة بالكبدة', price: 30, extras: [], image: AssetsManager.pasta),
    ItemModel(name: 'مكرونة بالكبدة', price: 30, extras: [], image: AssetsManager.pasta),
    ItemModel(name: 'مكرونة بالكبدة', price: 30, extras: [], image: AssetsManager.pasta),
    ItemModel(name: 'مكرونة بالكبدة', price: 30, extras: [], image: AssetsManager.pasta),
    ItemModel(name: 'مكرونة بالكبدة', price: 30, extras: [], image: AssetsManager.pasta),
    ItemModel(name: 'مكرونة بالكبدة', price: 30, extras: [], image: AssetsManager.pasta),
    ItemModel(name: 'مكرونة بالكبدة', price: 30, extras: [], image: AssetsManager.pasta),

    ItemModel(name: 'مكرونة بالسجق', price: 35, extras: [], image: AssetsManager.pasta2),
    ItemModel(name: 'مكرونة بالسجق', price: 35, extras: [], image: AssetsManager.pasta2),
    ItemModel(name: 'مكرونة بالسجق', price: 35, extras: [], image: AssetsManager.pasta2),
    ItemModel(name: 'مكرونة بالسجق', price: 35, extras: [], image: AssetsManager.pasta2),
    ItemModel(name: 'مكرونة بالسجق', price: 35, extras: [], image: AssetsManager.pasta2),
    ItemModel(name: 'مكرونة بالسجق', price: 35, extras: [], image: AssetsManager.pasta2),
    ItemModel(name: 'مكرونة بالسجق', price: 35, extras: [], image: AssetsManager.pasta2),
    ItemModel(name: 'مكرونة بالسجق', price: 35, extras: [], image: AssetsManager.pasta2),

    ItemModel(name: 'سندوتش كبدة اسكندراني', price: 40, extras: [], image: AssetsManager.liver),
    ItemModel(name: 'سندوتش كبدة اسكندراني', price: 40, extras: [], image: AssetsManager.liver),
    ItemModel(name: 'سندوتش كبدة اسكندراني', price: 40, extras: [], image: AssetsManager.liver),
    ItemModel(name: 'سندوتش كبدة اسكندراني', price: 40, extras: [], image: AssetsManager.liver),
    ItemModel(name: 'سندوتش كبدة اسكندراني', price: 40, extras: [], image: AssetsManager.liver),
    ItemModel(name: 'سندوتش كبدة اسكندراني', price: 40, extras: [], image: AssetsManager.liver),
    ItemModel(name: 'سندوتش كبدة اسكندراني', price: 40, extras: [], image: AssetsManager.liver),
    ItemModel(name: 'سندوتش كبدة اسكندراني', price: 40, extras: [], image: AssetsManager.liver),

    ItemModel(name: 'Cola', price: 15, extras: [], image: AssetsManager.cola),
    ItemModel(name: 'Cola', price: 15, extras: [], image: AssetsManager.cola),
    ItemModel(name: 'Cola', price: 15, extras: [], image: AssetsManager.cola),
    ItemModel(name: 'Cola', price: 15, extras: [], image: AssetsManager.cola),
    ItemModel(name: 'Cola', price: 15, extras: [], image: AssetsManager.cola),
    ItemModel(name: 'Cola', price: 15, extras: [], image: AssetsManager.cola),
    ItemModel(name: 'Cola', price: 15, extras: [], image: AssetsManager.cola),
    ItemModel(name: 'Cola', price: 15, extras: [], image: AssetsManager.cola),



  ];
}