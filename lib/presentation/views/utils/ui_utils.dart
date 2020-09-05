import 'package:flutter/material.dart';

class UIUtils {
  static Widget buildTextWithSuperscript(BuildContext context, String text, String superscriptText,
      {Color textColor = Colors.black}) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: text, style: Theme.of(context).textTheme.headline6.copyWith(color: textColor ?? Colors.black)),
          WidgetSpan(
            child: Transform.translate(
              offset: const Offset(2, -4),
              child: Text(superscriptText, textScaleFactor: 0.9),
            ),
          ),
        ],
      ),
    );
  }
}
