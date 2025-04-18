part of 'home_cart_cubit.dart';

@immutable
sealed class HomeCartState {}

final class HomeCartInitial extends HomeCartState {}

final class AddToCart extends HomeCartState {}

final class RemoveFromCart extends HomeCartState {}

final class CartEmpty extends HomeCartState {}
