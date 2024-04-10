import 'package:food_app_assignment/app/data/category_data.dart';
import 'package:food_app_assignment/app/data/product_list_data.dart';
import 'package:food_app_assignment/app/exports.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color backgroundColor =
      Color(int.parse('#282A37'.substring(1, 7), radix: 16) + 0xFF000000);
  Color cardColor =
      Color(int.parse('#32323E'.substring(1, 7), radix: 16) + 0xFF000000);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 13),
                      child: const Icon(
                        Icons.sort,
                        color: Colors.white,
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Delivery to',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '02-075 Konstructorska 9',
                            style: TextStyle(color: Colors.amber),
                          ),
                        ],
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/user.jpg',
                        width: 40,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'What would you like ',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'to order',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 13, 10, 13),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          prefixIcon: const Icon(Icons.search),
                          hintStyle: const TextStyle(color: Colors.grey),
                          hintText: 'Find for restaurant or food...',
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 13),
                      child: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: categoryList
                        .map((category) => CategoryItem(category: category))
                        .toList(),
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Fastest delivery',
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: productList
                        .map((product) => Product(product: product))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
