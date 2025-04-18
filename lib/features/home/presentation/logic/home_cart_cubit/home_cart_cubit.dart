import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_cart_state.dart';

class HomeCartCubit extends Cubit<HomeCartState> {
  HomeCartCubit() : super(HomeCartInitial());
}
