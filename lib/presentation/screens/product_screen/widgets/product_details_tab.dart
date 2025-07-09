import 'package:agro_market/presentation/app_constatns/app_dimensions.dart';
import 'package:agro_market/presentation/app_constatns/app_padding.dart';
import 'package:agro_market/presentation/app_constatns/text_constants/product_screen_text_constatnts.dart';
import 'package:agro_market/presentation/custom/custom_widgets/height_box.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:agro_market/presentation/theme/text/app_fonts.dart';
import 'package:flutter/material.dart';

class ProductDetailsTabs extends StatefulWidget {
  final List<String> descriptionPoints;
  final List<String> compositionPoints;

  const ProductDetailsTabs({
    super.key,
    required this.descriptionPoints,
    required this.compositionPoints,
  });

  @override
  State<ProductDetailsTabs> createState() => _ProductDetailsTabsState();
}

class _ProductDetailsTabsState extends State<ProductDetailsTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
            indicatorColor: Colors.green.shade700,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            labelStyle: const TextStyle(fontSize: AppFonts.mediumFontSize, fontWeight: FontWeight.w600),
            unselectedLabelStyle: const TextStyle(fontSize: AppFonts.mediumFontSize, fontWeight: FontWeight.w500),
            tabs: const [
              Tab(text: ProductScreenTextConstatnts.productDetailsDescriptionText),
              Tab(text: ProductScreenTextConstatnts.productDetailsComponentText),
            ],
          ),
          const Divider(height: AppDimensions.mostTinestHeight, color: AgroMarketColorPalette.textFieldBorderColor),
          HeightBox(height: AppDimensions.bigMediumHeight),
          SizedBox(
            height: AppDimensions.enormousHeight,
            child: TabBarView(
              children: [
                _buildBulletList(widget.descriptionPoints),
                _buildBulletList(widget.compositionPoints),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletList(List<String> points) {
    return ListView.builder(
      itemCount: points.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: AppPaddings.smallBottomPadding,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('• ', style: TextStyle(fontSize: AppFonts.mediumFontSize, color: AgroMarketColorPalette.productPriceDarkColor)),
              Expanded(
                child: Text(
                  points[index],
                  style: const TextStyle(
                    fontSize: AppFonts.mediumFontSize,
                    color: AgroMarketColorPalette.productPriceDarkColor,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
