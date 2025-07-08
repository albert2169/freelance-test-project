import 'package:agro_market/presentation/app_constatns/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final itemCount = 10;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
           GestureDetector(
      child: SvgPicture.asset(AppIcons.shoppingCardIcon, height: 32, width: 32,), 
      onTap: () {

      },
    ),
            if (itemCount != null && itemCount! > 0)
              Positioned(
                right: -5,
                top: -5,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: Center(
                    child: Text(
                      '$itemCount',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
          ],
        ),
        // if (suffixText != null)
        //   Padding(
        //     padding: const EdgeInsets.only(left: 8.0),
        //     child: Text(
        //       suffixText!,
        //       style: suffixTextStyle ?? Theme.of(context).textTheme.bodyMedium,
        //     ),
        //   ),
      ],
    );
  }
}

