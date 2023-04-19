import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants/constant.dart';
import 'package:portfolio/constants/custom_button.dart';
import 'package:portfolio/providers/type_writer.dart';
import 'package:provider/provider.dart';

import 'features/TypeWriter/widgets/typewriter_text.dart';

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
        theme: ThemeData.dark(useMaterial3: true),
        home: const MyHomePage(title: 'Welcome to my Portfolio'),
      ),
    );
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
    log('called');
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: Constants.gradient(),
        ),
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.home_outlined),
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            // fixedColor: Colors.transparent,
            useLegacyColorScheme: true,

            type: BottomNavigationBarType.fixed,
            // backgroundColor: Colors.transparent,
            unselectedLabelStyle: const TextStyle(color: Colors.white),
            items: const [
              // BottomNavigationBarItem(icon: Icon(Icons.home), label: 'About'),
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
            decoration: BoxDecoration(
              gradient: Constants.gradient(),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height -
                (kBottomNavigationBarHeight +
                    MediaQuery.of(context).padding.vertical),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 35),
                    decoration: Constants.glassMorph(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Text(
                        //   'Ansh is ',
                        //   style: TextStyle(fontSize: 30),
                        // ),
                        // TypewriterText(texts: [
                        //   'Flutter Developer',
                        //   'Backend Developer',
                        // ]),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Hello,',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.grey.shade800),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'This is ',
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.grey.shade800),
                                    ),
                                    TextSpan(
                                      text: 'Ansh Agrawal',
                                      style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40),
                                    ),
                                  ],
                                ),
                              ),
                              TypewriterText(
                                  color: Colors.grey.shade800,
                                  texts: const [
                                    'Flutter Developer',
                                    'Backend Developer',
                                  ]),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomButton(
                                    text: 'Hire Me',
                                    backgroundColor: Colors.blue,
                                    onPressed: () {},
                                    textColor: Colors.white,
                                  ),
                                  CustomButton(
                                    text: 'See my works',
                                    backgroundColor: Colors.transparent,
                                    onPressed: () {},
                                    textColor: Colors.grey.shade800,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: SvgPicture.asset('assets/images/home.svg')),
                      ],
                    ),
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
