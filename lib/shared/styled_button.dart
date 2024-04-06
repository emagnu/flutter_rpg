//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../themes/theme.dart';
//  //   ///

class StyledButton extends StatelessWidget {
  final Function() onPressed;
  final Widget child;

  const StyledButton({super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primaryColor, AppColors.primaryAccent],
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: child,
      ),
    );
  }
}
