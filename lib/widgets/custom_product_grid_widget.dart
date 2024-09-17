import 'package:clothing_store_app/util/app_images.dart';
import 'package:clothing_store_app/widgets/custom_product_grid_item.dart';
import 'package:flutter/material.dart';

class CustomProductGridWidget extends StatefulWidget {
  const CustomProductGridWidget({super.key});

  @override
  State<CustomProductGridWidget> createState() =>
      _CustomProductGridWidgetState();
}

class _CustomProductGridWidgetState extends State<CustomProductGridWidget> {
  List<Map<String, dynamic>> productDetails = [
    {
      "imagePath": [
        AppImages.productImage1,
        AppImages.productImage1_1,
        AppImages.productImage1_2
      ],
      'productTitle': "Oversized T-shirt",
      "rating": "4.9",
      "price": "\$83.97",
      "isLiked": false,
      "description":
          """An oversized t-shirt is a loose-fitting, casual garment that offers a relaxed and comfortable style. Typically characterized by a larger cut that extends beyond the standard fit, it provides extra room around the shoulders, chest, and torso. The oversized t-shirt is popular for its laid-back vibe, often worn as streetwear or for lounging, and is versatile enough to pair with various bottoms like jeans, shorts, or leggings. Its unrestrictive design makes it a go-to choice for both fashion and comfort, appealing to a wide range of people looking for a stylish yet effortless look."""
    },
    {
      "imagePath": [
        AppImages.productImage2,
        AppImages.productImage2_1,
        AppImages.productImage2_2
      ],
      'productTitle': "Chino Pant",
      "rating": "5",
      "price": "\$120.00",
      "isLiked": false,
      "description":
          """Chino pants are versatile, lightweight trousers made from a cotton or cotton-blend fabric, known for their soft texture and slightly dressier appearance compared to jeans. With a slim, tailored fit and flat-front design, chinos offer a polished yet casual style, making them suitable for both formal and informal occasions. They typically come in neutral colors like beige, navy, and olive, allowing them to be easily paired with a variety of shirts and footwear. Chino pants are favored for their comfort, breathability, and ability to provide a sharp, clean look while maintaining a relaxed feel."""
    },
    {
      "imagePath": [
        AppImages.productImage3,
        AppImages.productImage3_1,
        AppImages.productImage3_2
      ],
      'productTitle': "Leather Jacket",
      "rating": "4.5",
      "price": "\$83.00",
      "isLiked": false,
      "description":
          """A leather jacket is a timeless fashion piece known for its edgy, rugged style and durable construction. Typically made from cowhide, lambskin, or faux leather, it features a fitted design with various elements like zippers, studs, or buckles that enhance its bold appearance. Leather jackets come in different styles, including biker, bomber, and moto, each offering a unique aesthetic ranging from rebellious to sleek. Apart from being a fashion statement, they also provide warmth and protection from the elements, making them both practical and stylish. The leather jacket is a versatile wardrobe staple that adds a touch of toughness and sophistication to any outfit."""
    },
    {
      "imagePath": [AppImages.productImage4, AppImages.productImage4_1],
      'productTitle': "Abaya",
      "rating": "3.9",
      "price": "\$120.00",
      "isLiked": false,
      "description":
          """An abaya is a traditional, loose-fitting garment worn by women, primarily in the Middle East and parts of North Africa. Typically made from lightweight fabrics like crepe or chiffon, the abaya covers the body from shoulders to feet, offering modesty while maintaining a graceful and elegant silhouette. Often designed in black, it can feature subtle or intricate embellishments such as embroidery, beadwork, or lace, adding a touch of personal style. The abaya is worn over regular clothing and is commonly paired with a hijab or headscarf. It combines cultural significance with comfort and style, allowing for both modesty and self-expression."""
    },
    {
      "imagePath": [
        AppImages.productImage5,
        AppImages.productImage5_1,
        AppImages.productImage5_2
      ],
      'productTitle': "Long Coat",
      "rating": "5",
      "price": "\$98.00",
      "isLiked": false,
      "description":
          """A long coat is a stylish and functional outerwear piece that extends below the hips, often reaching the knees or lower, providing both warmth and coverage. Made from materials like wool, cashmere, or synthetic blends, long coats are designed to shield the wearer from cold weather while maintaining a sleek, tailored look. They come in various styles such as trench coats, overcoats, and pea coats, each offering a distinctive aesthetic that can be formal or casual. Long coats are often equipped with features like buttons, belts, or lapels, adding to their sophistication and versatility. This timeless wardrobe staple is perfect for layering over suits, dresses, or casual outfits, making it an essential piece for cooler climates."""
    },
    {
      "imagePath": [AppImages.productImage6, AppImages.productImage6_1],
      'productTitle': "Polo",
      "rating": "4.7",
      "price": "\$28.00",
      "isLiked": false,
      "description":
          """A polo t-shirt is a versatile and classic wardrobe staple, characterized by its short sleeves, soft collar, and buttoned placket at the neckline. Made from breathable fabrics like cotton or cotton blends, polo t-shirts offer a blend of comfort and style, bridging the gap between casual and semi-formal attire. The structured collar gives it a refined look, making it suitable for a range of occasions, from casual outings to smart-casual events. Polos are typically slim-fitting, available in various colors, and often feature subtle logos or embroidery. This timeless piece is easy to pair with jeans, chinos, or shorts, offering a polished yet relaxed vibe."""
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: productDetails.length,
      itemBuilder: (context, index) {
        return ProductGridItem(
          product: productDetails[index],
          onLikeToggle: () {
            setState(() {
              productDetails[index]['isLiked'] =
                  !productDetails[index]['isLiked'];
            });
          },
        );
      },
    );
  }
}
