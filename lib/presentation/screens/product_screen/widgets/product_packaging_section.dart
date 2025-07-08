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
    if (packagings.isEmpty) return const SizedBox.shrink();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Выбрать фасовку:',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87),
        ),
        const WidthBox(width: 11),
        Expanded(
          child: Row(
            children: packagings.map((option) {
              final isSelected = _selectedOption == option;
              return Flexible(
                fit: FlexFit.tight,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedOption = option;
                    });
                    widget.onPackagingOptionSelected(option);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 6),
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.black87 : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: isSelected ? Colors.black87 : Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        option,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
