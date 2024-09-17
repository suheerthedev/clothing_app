import 'package:clothing_store_app/util/app_colors.dart';
import 'package:clothing_store_app/widgets/custom_bottom_modal_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HorizontalProductItem extends StatefulWidget {
  const HorizontalProductItem(
      {super.key,
      required this.product,
      required this.deleteFromCart,
      required this.isSlidable,
      required this.hasPrefixIcon,
      required this.hasIncrementAndDecrement,
      required this.decrementDeleteFromCart});
  final Map<String, dynamic> product;
  final Function deleteFromCart;
  final Function decrementDeleteFromCart;
  final bool isSlidable;
  final bool hasPrefixIcon;
  final bool hasIncrementAndDecrement;

  @override
  State<HorizontalProductItem> createState() => _HorizontalProductItemState();
}

class _HorizontalProductItemState extends State<HorizontalProductItem> {
  int quantityOfProduct = 1;
  void _productDecrement() {
    if (quantityOfProduct == 1) {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return CustomBottomModalSheet(
            product: widget.product,
            removeProduct: widget.decrementDeleteFromCart,
          );
        },
      );
    } else {
      setState(() {
        quantityOfProduct--;
      });
    }
  }

  void _productIncrement() {
    setState(() {
      quantityOfProduct++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Slidable(
      key: ValueKey(widget.product['productTitle']),
      enabled: widget.isSlidable,
      endActionPane: ActionPane(motion: const ScrollMotion(), children: [
        SlidableAction(
          onPressed: (context) {
            widget.deleteFromCart();
          },
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          icon: Icons.delete,
          label: "Tap To Delete",
        )
      ]),
      child: Container(
        // padding: EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(vertical: 15),
        height: size.height * 0.13,
        width: size.width * 1,
        child: Row(
          children: [
            widget.hasPrefixIcon
                ? const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(Iconsax.menu),
                  )
                : const Padding(padding: EdgeInsets.all(0)),
            Container(
                // padding: EdgeInsets.all(8),
                margin: const EdgeInsets.only(right: 5, left: 0),
                height: 250,
                width: 90,
                decoration: BoxDecoration(
                    color: const Color(0xffeee5db),
                    borderRadius: BorderRadius.circular(0)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: SvgPicture.asset(
                      widget.product["imagePath"],
                      fit: BoxFit.contain,
                    ))),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.product['productTitle'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: AppColors.primaryTextColor,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(widget.product["productSize"],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: AppColors.primaryTextColor,
                                fontWeight: FontWeight.w400)),
                        Text(widget.product["productPrice"],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: AppColors.primaryTextColor,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  widget.hasIncrementAndDecrement
                      ? Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox.square(
                                  dimension: 20,
                                  child: FloatingActionButton(
                                    backgroundColor: AppColors.surfaceColor,
                                    shape: const CircleBorder(),
                                    mini: true,
                                    onPressed: _productDecrement,
                                    child: Icon(
                                      Iconsax.minus,
                                      color: AppColors.primaryIconColor,
                                      size: 20,
                                    ),
                                  )),
                              Text(
                                "$quantityOfProduct",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 17),
                              ),
                              SizedBox.square(
                                  dimension: 20,
                                  child: FloatingActionButton(
                                    backgroundColor: AppColors.secondaryColor,
                                    shape: const CircleBorder(),
                                    mini: true,
                                    onPressed: _productIncrement,
                                    child: Icon(
                                      Iconsax.add,
                                      color: AppColors.onSecondaryIconColor,
                                      size: 20,
                                    ),
                                  )),
                            ],
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
