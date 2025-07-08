import 'package:agro_market/presentation/custom/custom_widgets/height_box.dart';
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
            labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            unselectedLabelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            tabs: const [
              Tab(text: 'Описание'),
              Tab(text: 'Состав'),
            ],
          ),
          const Divider(height: 1, color: Colors.grey),
          HeightBox(height: 32),
          SizedBox(
            height: 51,
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
          padding: const EdgeInsets.only(bottom: 2.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('• ', style: TextStyle(fontSize: 16, color: Colors.black)),
              Expanded(
                child: Text(
                  points[index],
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    //height: 1.4,
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
