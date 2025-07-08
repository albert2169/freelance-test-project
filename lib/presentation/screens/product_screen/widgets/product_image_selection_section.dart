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
          padding: const EdgeInsets.only(left: 20, top: 35, bottom: 35),
          child: SizedBox(
            width: 50,
            child: ListView.builder(
              itemCount: previewImages.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => onImageTap(index),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedImage == previewImages[index]
                              ? AgroMarketColorPalette.primaryTextDarkColor
                              : Colors.transparent,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image(image: previewImages[index].image, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const WidthBox(width: 16),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
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
