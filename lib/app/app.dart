import 'exports.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery',
      initialRoute: HomeScreen.routeName,
      getPages: getPages(),
      theme: ThemeData(primarySwatch: Colors.grey),
      themeMode: ThemeMode.light,
    );
  }
}

// #282A37

// #32323E