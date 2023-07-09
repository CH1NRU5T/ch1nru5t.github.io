import 'package:flutter/material.dart';
import 'package:portfolio/constants/constant.dart';
import 'package:portfolio/constants/custom_textstyle.dart';
import 'package:portfolio/features/home/screens/home_screen.dart';
import 'package:portfolio/features/skills/screens/skills_screen.dart';
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
          theme: ThemeData.dark(useMaterial3: true).copyWith(),
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

  int index = 0;
  void setIndex(int index) {
    setState(() {
      this.index = index;
    });
  }

  List<Widget> pages = [
    const HomeScreen(
      typewriterList: [
        'Flutter Developer',
        'Backend Developer',
        'Video Editor'
      ],
    ),
    const SkillsScreen(),
    const Center(child: Text('Experience')),
    const Center(child: Text('Projects')),
    const Center(child: Text('Contact')),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(),
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: setIndex,
            elevation: 0,
            useLegacyColorScheme: true,
            type: BottomNavigationBarType.fixed,
            unselectedLabelStyle: const TextStyle(color: Colors.white),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'About'),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(child: pages[index]),
                  Container(
                    margin: const EdgeInsets.only(right: 8, bottom: 5),
                    child: Text('Made by Ansh Agrawal, with ❤️ and Flutter',
                        style: getCustomTextStyle(
                          weight: FontWeight.w600,
                          color: Colors.grey.shade800,
                          size: 15,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
