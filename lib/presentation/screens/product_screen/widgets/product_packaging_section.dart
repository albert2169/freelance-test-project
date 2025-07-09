import 'package:agro_market/presentation/app_constatns/app_dimensions.dart';
import 'package:agro_market/presentation/app_constatns/app_padding.dart';
import 'package:agro_market/presentation/app_constatns/text_constants/product_categories_text_constants.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/text/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:agro_market/presentation/models/product_view_model.dart';
import 'package:agro_market/presentation/custom/custom_widgets/width_box.dart';

class ProductPackagingSection extends StatefulWidget {
  final ProductViewModel product;
  final Function(String) onPackagingOptionSelected;

  const ProductPackagingSection({
    super.key,
    required this.product,
    required this.onPackagingOptionSelected,
  });

  @override
  State<ProductPackagingSection> createState() => _ProductPackagingSectionState();
}

class _ProductPackagingSectionState extends State<ProductPackagingSection> {
  late String _selectedOption;
  late List<String> packagings;

  @override
  void initState() {
    super.initState();
    final currentPackagingMap = widget.product.priceInfo[widget.product.packagingType];
    packagings = currentPackagingMap?.keys.toList() ?? [];
    _selectedOption = packagings.isNotEmpty ? packagings.first : '';
  }

  @override
  Widget build(BuildContext context) {
    if (packagings.isEmpty) {
      return const SizedBox.shrink();
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          ProductCategoriesTextConstants.choosePackagingText,
          style: TextStyle(fontSize: AppFonts.mediumFontSize, fontWeight: AppFonts.semiBold, color: AgroMarketColorPalette.primaryTextDarkColor),
        ),
        const WidthBox(width: AppDimensions.normalHeight),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: packagings.map((option) {
                final isSelected = _selectedOption == option;
                return GestureDetector(
                  onTap: () {
                    setState(() => _selectedOption = option);
                    widget.onPackagingOptionSelected(option);
                  },
                  child: Container(
                    margin: AppPaddings.productPackagingSectionRightMarginPadding,
                    padding: AppPaddings.productPackagingSectionSymmetricPadding,
                    decoration: BoxDecoration(
                      color: isSelected ? AgroMarketColorPalette.productPriceDarkColor : AgroMarketColorPalette.white,
                      borderRadius: BorderRadius.circular(AppDimensions.containerSmallRadius),
                      border: Border.all(
                        color: isSelected ? AgroMarketColorPalette.productPriceDarkColor : AgroMarketColorPalette.textFieldBorderColor,
                      ),
                    ),
                    child: Text(
                      option,
                      style: TextStyle(
                        color: isSelected ? AgroMarketColorPalette.white : AgroMarketColorPalette.productPriceDarkColor,
                        fontWeight: FontWeight.w500,
                        fontSize: AppFonts.normalSmallFontSize,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
