// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class FFButtonOptions {
  const FFButtonOptions({
    this.textStyle,
    this.elevation,
    this.height,
    this.width,
    this.padding,
    this.color,
    this.disabledColor,
    this.disabledTextColor,
    this.splashColor,
    this.iconSize,
    this.iconColor,
    this.iconPadding,
    this.borderRadius,
    this.borderSide,
  });

  final TextStyle textStyle;
  final double elevation;
  final double height;
  final double width;
  final EdgeInsetsGeometry padding;
  final Color color;
  final Color disabledColor;
  final Color disabledTextColor;
  final Color splashColor;
  final double iconSize;
  final Color iconColor;
  final EdgeInsetsGeometry iconPadding;
  final double borderRadius;
  final BorderSide borderSide;
}

class FFButtonWidget extends StatelessWidget {
  const FFButtonWidget({
    Key key,
    @required this.text,
    @required this.onPressed,
    this.iconData,
    @required this.options,
    this.autoSize = true,
    this.alignment,
  }) : super(key: key);

  final String text;
  final IconData iconData;
  final VoidCallback onPressed;
  final FFButtonOptions options;
  final bool autoSize;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    dynamic textWidget;
    if (autoSize) {
      textWidget = AutoSizeText(
        text,
        style: options.textStyle,
        maxLines: 1,
      );
    } else {
      if (alignment == null) {
        textWidget = Text(
          text,
          style: options.textStyle,
          maxLines: 1,
        );
      } else {
        textWidget = Align(
          alignment: alignment,
          child: Text(
            text,
            style: options.textStyle,
            maxLines: 1,
          ),
        );
      }
    }
    if (iconData != null) {
      return SizedBox(
        height: options.height,
        width: options.width,
        child: RaisedButton.icon(
          icon: Padding(
            padding: options.iconPadding ?? EdgeInsets.zero,
            child: Icon(
              iconData,
              size: options.iconSize,
              color: options.iconColor ?? options.textStyle.color,
            ),
          ),
          label: textWidget,
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(options.borderRadius),
            side: options.borderSide ?? BorderSide.none,
          ),
          color: options.color,
          colorBrightness: ThemeData.estimateBrightnessForColor(options.color),
          textColor: options.textStyle.color,
          disabledColor: options.disabledColor,
          disabledTextColor: options.disabledTextColor,
          elevation: options.elevation,
          splashColor: options.splashColor,
        ),
      );
    }

    return SizedBox(
      height: options.height,
      width: options.width,
      child: RaisedButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(options.borderRadius ?? 28),
          side: options.borderSide ?? BorderSide.none,
        ),
        textColor: options.textStyle.color,
        color: options.color,
        colorBrightness: ThemeData.estimateBrightnessForColor(options.color),
        disabledColor: options.disabledColor,
        disabledTextColor: options.disabledTextColor,
        padding: options.padding,
        elevation: options.elevation,
        child: textWidget,
      ),
    );
  }
}
