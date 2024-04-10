import 'package:food_app_assignment/app/exports.dart';

class CategoryItem extends StatefulWidget {
  final CategoryModel category;
  const CategoryItem({super.key, required this.category});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  Color cardColor =
      Color(int.parse('#32323E'.substring(1, 7), radix: 16) + 0xFF000000);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15, left: 5, right: 5, top: 5),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              widget.category.image,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            widget.category.name,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
