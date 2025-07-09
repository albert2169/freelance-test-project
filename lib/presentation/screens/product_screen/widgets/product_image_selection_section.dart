import 'package:agro_market/presentation/app_constatns/app_dimensions.dart';
import 'package:agro_market/presentation/app_constatns/app_padding.dart';
import 'package:agro_market/presentation/custom/custom_widgets/width_box.dart';
import 'package:agro_market/presentation/theme/colors/agro_market_color_palette.dart';
import 'package:flutter/material.dart';

class ProductImageSelectionSection extends StatelessWidget {
  final List<Image> previewImages;
  final Function(int) onImageTap;
  final Image selectedImage;
  const ProductImageSelectionSection({
    super.key,
    required this.previewImages,
    required this.onImageTap,
    required this.selectedImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: AppPaddings.productImageSelectionPadding,
          child: SizedBox(
            width: AppDimensions.hugeWidth,
            child: ListView.builder(
              itemCount: previewImages.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => onImageTap(index),
                  child: Padding(
                    padding: AppPaddings.normalBottomPadding,
                    child: Container(
                      width: AppDimensions.normalSize.width,
                      height: AppDimensions.normalSize.height,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedImage == previewImages[index]
                              ? AgroMarketColorPalette.primaryTextDarkColor
                              : AgroMarketColorPalette.transparent,
                          width: AppDimensions.pocoWidth,
                        ),
                        borderRadius: BorderRadius.circular(AppDimensions.containerSmallRadius),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(AppDimensions.containerTinyRadius),
                        child: Image(image: previewImages[index].image, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const WidthBox(width: AppDimensions.mediumWidth),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppDimensions.containerOrdineryRadius),
            child: Image(
              image: selectedImage.image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
      ],
    );
  }
}
