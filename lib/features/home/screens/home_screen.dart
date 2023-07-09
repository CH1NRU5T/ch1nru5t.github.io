import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/constant.dart';
import '../../../constants/custom_button.dart';
import '../../../constants/custom_textstyle.dart';
import '../../TypeWriter/widgets/typewriter_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.typewriterList});
  final List<String> typewriterList;
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: defaultTargetPlatform == TargetPlatform.iOS ||
              defaultTargetPlatform == TargetPlatform.android
          ? Axis.vertical
          : Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello,',
                style: getCustomTextStyle(
                    size: Constants.getTextSizeFromDevice(),
                    color: Colors.grey.shade800),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'This is ',
                      style: getCustomTextStyle(
                          size: Constants.getTextSizeFromDevice(),
                          color: Colors.grey.shade800),
                    ),
                    TextSpan(
                      text: 'Ansh Agrawal',
                      style: getCustomTextStyle(
                          size: Constants.getTextSizeFromDevice(),
                          color: Colors.grey.shade800,
                          weight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              TypewriterText(
                  color: Colors.grey.shade800, texts: typewriterList),
              const SizedBox(height: 10),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    text: 'Hire Me',
                    backgroundColor: const Color.fromARGB(255, 12, 112, 195),
                    onPressed: () {},
                    textColor: Colors.white,
                  ),
                  const SizedBox(width: 20),
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
            child: SvgPicture.asset(
          '${Constants.imagesPath}home.svg',
          height: MediaQuery.of(context).size.height * 0.48,
          width: MediaQuery.of(context).size.width * 0.48,
        )),
      ],
    );
  }
}
