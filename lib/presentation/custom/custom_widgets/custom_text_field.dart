import 'package:agro_market/presentation/custom/custom_widgets/height_box.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/text/agro_market_theme_extension.dart';
import 'package:agro_market/presentation/theme/text/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String textFieldTopic;
  final Widget? prefixWidget;
  final TextInputType? keyboardType;
  final String? errorMsg;

  const CustomTextField({
    super.key,
    required this.textEditingController,
    required this.textFieldTopic,
    this.prefixWidget,
    this.keyboardType,
    this.errorMsg,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String? _errorText;

  @override
  void initState() {
    super.initState();
    _errorText = widget.errorMsg;

    widget.textEditingController.addListener(_handleTextChanged);
  }

  @override
  void dispose() {
    widget.textEditingController.removeListener(_handleTextChanged);
    super.dispose();
  }

  void _handleTextChanged() {
    if (_errorText != null && _errorText!.isNotEmpty) {
      setState(() {
        _errorText = null;
      });
    }
  }

  @override
  void didUpdateWidget(covariant CustomTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.errorMsg != oldWidget.errorMsg) {
      if (_errorText != widget.errorMsg) {
        setState(() {
          _errorText = widget.errorMsg;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AgroMarketThemeExtension>();
    final isError = _errorText != null && _errorText!.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.textFieldTopic,
          style: textTheme!.introTitleTextStyle.copyWith(fontSize: AppFonts.smallFontSize),
        ),
        HeightBox(height: 4),
        TextField(
          keyboardType: widget.keyboardType,
          style: textTheme.introTitleTextStyle.copyWith(fontSize: AppFonts.smallFontSize),
          controller: widget.textEditingController,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            prefixIcon: widget.prefixWidget != null
                ? Padding(
                    padding: const EdgeInsets.only(left: 8, right: 4),
                    child: widget.prefixWidget,
                  )
                : null,
            prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
            errorText: _errorText,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: isError
                    ? AgroMarketColorPalette.errorColor
                    : AgroMarketColorPalette.primaryTextDarkColor,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: isError
                    ? AgroMarketColorPalette.errorColor
                    : AgroMarketColorPalette.primaryTextDarkColor,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AgroMarketColorPalette.errorColor),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AgroMarketColorPalette.errorColor),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
