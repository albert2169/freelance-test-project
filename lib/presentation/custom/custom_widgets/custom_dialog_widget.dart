import 'package:flutter/material.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';

class CustomDialogWidget extends StatelessWidget {
  final String title;
  final List<Widget>? actions;

  const CustomDialogWidget({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: textTheme!.appBarTitleStyle.copyWith(fontSize: 15),
            ),
            const SizedBox(height: 24),
            if (actions != null)
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: actions!
                    .map(
                      (action) => Padding(padding: const EdgeInsets.only(top: 12), child: action),
                    )
                    .toList(),
              ),
          ],
        ),
      ),
    );
  }
}
