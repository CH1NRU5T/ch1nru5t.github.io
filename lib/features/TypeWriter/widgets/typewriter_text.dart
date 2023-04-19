import 'package:flutter/material.dart';
import 'package:portfolio/features/TypeWriter/services/typewriter_services.dart';
import 'package:portfolio/providers/type_writer.dart';
import 'package:provider/provider.dart';

class TypewriterText extends StatefulWidget {
  const TypewriterText({super.key, required this.texts, this.color});
  final List<String> texts;
  final Color? color;
  @override
  State<TypewriterText> createState() => _TypewriterTextState();
}

class _TypewriterTextState extends State<TypewriterText> {
  TypeWriterServices typeWriterServices = TypeWriterServices();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      typeWriterServices.keepChangingText(
          list: widget.texts, index: 0, context: context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TypeWriter>(
      builder: (context, value, child) {
        return Text(
          value.text,
          style: TextStyle(fontSize: 30, color: widget.color ?? Colors.white),
        );
      },
    );
  }
}
