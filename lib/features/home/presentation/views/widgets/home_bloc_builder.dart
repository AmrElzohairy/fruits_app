import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/features/home/presentation/logic/home_cart_cubit/home_cart_cubit.dart';
import 'package:fruits_app/features/home/presentation/views/widgets/home_cart.dart';

class HomeCartBlocBuilder extends StatelessWidget {
  const HomeCartBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCartCubit, HomeCartState>(
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            // This creates a slide-up and fade-in animation
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeOut),
              ),
              child: FadeTransition(opacity: animation, child: child),
            );
          },
          child:
              context.read<HomeCartCubit>().cartFruits.isNotEmpty
                  ? const HomeCart()
                  : const SizedBox.shrink(),
        );
      },
    );
  }
}
