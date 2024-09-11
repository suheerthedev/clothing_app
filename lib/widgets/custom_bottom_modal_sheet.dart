import 'package:clothing_store_app/util/app_colors.dart';
import 'package:clothing_store_app/widgets/horizontal_product_item.dart';
import 'package:flutter/material.dart';

class CustomBottomModalSheet extends StatefulWidget {
  const CustomBottomModalSheet(
      {super.key, required this.product, required this.removeProduct});

  final Map<String, dynamic> product;
  final Function removeProduct;

  @override
  State<CustomBottomModalSheet> createState() => _CustomBottomModalSheetState();
}

class _CustomBottomModalSheetState extends State<CustomBottomModalSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
          color: AppColors.surfaceColor,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: const [
            BoxShadow(color: Colors.black, blurRadius: 20, offset: Offset(0, 5))
          ]),
      child: Column(
        children: [
          Text(
            "Remove from Cart?",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.primaryTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: HorizontalProductItem(
              product: widget.product,
              deleteFromCart: () {},
              decrementDeleteFromCart: widget.removeProduct,
              isSlidable: false,
              hasPrefixIcon: false,
              hasIncrementAndDecrement: false,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.surfaceColor),
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: AppColors.secondaryTextColor),
                    )),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      widget.removeProduct();
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondaryColor,
                    ),
                    child: Text(
                      "Yes, Remove",
                      style: TextStyle(color: AppColors.onPrimaryTextColor),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
