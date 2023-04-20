import 'package:flutter/material.dart';
import 'package:portfolio/constants/constant.dart';
import 'package:portfolio/features/home/screens/home_screen.dart';
import 'package:portfolio/providers/type_writer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => TypeWriter()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData.dark(useMaterial3: true).copyWith(
            textTheme: const TextTheme(
                bodyLarge: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                bodyMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                displayLarge: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                displayMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                displaySmall: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                headlineMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                headlineSmall: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                titleLarge: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                titleMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                titleSmall: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                bodySmall: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                labelSmall: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
          ),
          home: const MyHomePage(title: 'Welcome to my Portfolio'),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  List<String> list = ['Flutter Developer', 'Backend Developer'];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(),
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.home_outlined),
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            useLegacyColorScheme: true,
            type: BottomNavigationBarType.fixed,
            unselectedLabelStyle: const TextStyle(color: Colors.white),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.table_chart), label: 'Skills'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.table_chart), label: 'Experience'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.phone), label: 'Projects'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.phone), label: 'Contact'),
            ],
          ),
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.webp'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height -
                (kBottomNavigationBarHeight +
                    MediaQuery.of(context).padding.vertical),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              decoration: Constants.glassMorph(),
              child: const HomeScreen(),
            ),
          ),
        ),
      ),
    );
  }
}
