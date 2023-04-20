import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/type_writer.dart';

class TypeWriterServices {
  void keepChangingText(
      {required List<String> list,
      required int index,
      required BuildContext context}) async {
    while (true) {
      await Future.delayed(const Duration(milliseconds: 2650));
      Provider.of<TypeWriter>(context, listen: false)
          .changeText(list[++index % list.length]);
    }
  }
}
