import 'package:food_app_assignment/app/exports.dart';

class Product extends StatefulWidget {
  final ProductModel product;
  const Product({super.key, required this.product});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  Color cardColor =
      Color(int.parse('#32323E'.substring(1, 7), radix: 16) + 0xFF000000);

  bool _isFavorite = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400 / 1.5,
      padding: const EdgeInsets.only(right: 10),
      child: Card(
        elevation: 8,
        color: cardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10).copyWith(
                    bottomLeft: const Radius.circular(0),
                    bottomRight: const Radius.circular(0),
                  ),
                  child: Image.asset(
                    widget.product.image,
                    width: 400 / 1.5,
                    height: 200 / 1.5,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: InkWell(
                    onTap: () {
                      _isFavorite = !_isFavorite;
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    child: Icon(
                      _isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '${widget.product.name.capitalize}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.alarm,
                        color: Colors.red,
                      ),
                      Text(
                        widget.product.prepTime,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        widget.product.rating,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: const Text(
                          'Fastfood',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: const Text(
                          'Chicken',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: const Text(
                          'Fires',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
