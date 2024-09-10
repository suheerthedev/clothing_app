import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HorizontalProductItem extends StatefulWidget {
  const HorizontalProductItem(
      {super.key, required this.product, required this.deleteFromCart});
  final Map<String, dynamic> product;
  final VoidCallback deleteFromCart;

  @override
  State<HorizontalProductItem> createState() => _HorizontalProductItemState();
}

class _HorizontalProductItemState extends State<HorizontalProductItem> {
  int quantityOfProduct = 1;
  void _productDecrement() {
    setState(() {
      quantityOfProduct--;
    });
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
      endActionPane: ActionPane(
          motion: const ScrollMotion(),
          dismissible: DismissiblePane(onDismissed: widget.deleteFromCart),
          children: [
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Icon(Iconsax.menu),
            ),
            Container(
                margin: const EdgeInsets.only(right: 5, left: 0),
                height: 250,
                width: 90,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: SvgPicture.asset(
                      widget.product["imagePath"],
                      fit: BoxFit.cover,
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
                  Expanded(
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
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}