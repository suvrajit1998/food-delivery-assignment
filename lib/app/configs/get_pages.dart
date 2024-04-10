import '../exports.dart';

List<GetPage> getPages() {
  return [
    GetPage(
      name: HomeScreen.routeName,
      page: () => const HomeScreen(),
    ),
  ];
}