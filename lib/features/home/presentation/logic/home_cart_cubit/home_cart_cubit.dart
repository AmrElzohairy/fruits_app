import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/features/home/data/models/fruit_model.dart';

part 'home_cart_state.dart';

class HomeCartCubit extends Cubit<HomeCartState> {
  HomeCartCubit() : super(HomeCartInitial());
  List<FruitModel> cartFruits = [];
  
  int get cartCount => cartFruits.length;

  void addToCart(FruitModel fruit) {
    cartFruits.add(fruit);
    emit(AddToCart());
  }

  void removeFromCart(FruitModel fruit) {
    cartFruits.remove(fruit);
    emit(RemoveFromCart());
  }

  void clearCart() {
    cartFruits.clear();
    emit(CartEmpty());
  }

  bool isInCart(FruitModel fruit) {
    return cartFruits.contains(fruit);
  }

  void toggleCart(FruitModel fruit) {
    if (isInCart(fruit)) {
      removeFromCart(fruit);
    } else {
      addToCart(fruit);
    }
  }
}
