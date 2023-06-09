import 'package:credit_card_reader/core/utils/color_constant.dart';
import 'package:credit_card_reader/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
    this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.prefixWidget,
      this.suffixWidget,
      this.buttonColor,
      this.height,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;
  Color? buttonColor;
  double? height;

  EdgeInsetsGeometry? margin;

  Widget? prefixWidget;

  Widget? suffixWidget;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(context),
          )
        : _buildButtonWidget(context);
  }

  _buildButtonWidget(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        height: getVerticalSize(height ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixWidget ?? SizedBox(),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(context),
            ),
            suffixWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: this.buttonColor,
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      default:
        return getPadding(
          all: 7,
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
    }
  }

  _setFontStyle(BuildContext context) {
    switch (fontStyle) {
      default:
        return GoogleFonts.alike(
          fontWeight: FontWeight.bold,
    fontSize: getFontSize(28),
    textStyle: Theme.of(context).textTheme.labelLarge,
          color: ColorsConstants.whiteA700,
          letterSpacing: 0.3
    );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder16,
}

enum ButtonPadding {
  PaddingAll7,
}

enum ButtonVariant {
  FillGray4003f,
}

enum ButtonFontStyle {
  PoppinsMedium32,
}
