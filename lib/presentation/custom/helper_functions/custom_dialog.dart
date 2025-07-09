import 'dart:ui';
import 'package:agro_market/presentation/custom/custom_widgets/custom_dialog_widget.dart';
import 'package:flutter/material.dart';

void showCustomDialog({
  required BuildContext context,
  required String title,
  required List<Widget> actions,
}) {
  showGeneralDialog(
    context: context,
    barrierLabel: "Dialog",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.3),
    transitionDuration: const Duration(milliseconds: 200),
    pageBuilder: (context, anim1, anim2) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Material(
            type: MaterialType.transparency,
            child: Center(
              child: CustomDialogWidget(title: title, actions: actions),
            ),
          ),
        ),
      );
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return FadeTransition(
        opacity: CurvedAnimation(parent: anim1, curve: Curves.easeOut),
        child: child,
      );
    },
  );
}
