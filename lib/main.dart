import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/constants/constant.dart';
import 'package:portfolio/features/TypeWriter/widgets/typewriter_text.dart';
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
  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //   });
  // }

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
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            // fixedColor: Colors.transparent,
            useLegacyColorScheme: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            unselectedLabelStyle: const TextStyle(color: Colors.white),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'About'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.table_chart), label: 'Skills'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.phone), label: 'Projects'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.phone), label: 'Contact'),
            ],
          ),
          backgroundColor: Colors.transparent,
          // appBar: AppBar(
          //   title: Text(widget.title),
          //   elevation: 5,
          //   backgroundColor: Colors.transparent,
          //   centerTitle: true,
          // ),
          body: Container(
            decoration: BoxDecoration(
              gradient: Constants.gradient(),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height -
                (
                    // kToolbarHeight +
                    kBottomNavigationBarHeight +
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
                      children: const [
                        Text(
                          'Ansh is ',
                          style: TextStyle(fontSize: 30),
                        ),
                        TypewriterText(texts: [
                          'Flutter Developer',
                          'Backend Developer',
                        ]),
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
