import 'package:credit_card_reader/core/utils/color_constant.dart';
import 'package:credit_card_reader/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends ConsumerWidget {
  final String? label;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? hintText;
  final String? errorText;
  final Widget? suffixIcon;
  final VoidCallback? onEditingComplete;
  final double height;
  final double width;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType inputType;
  final Function(String)? onChanged;
  final Function(String)? onSaved;
  final bool isReadOnly;

  final FormFieldValidator<String>? validator;

  const CustomTextField(
      {Key? key,
      this.label,
      this.isReadOnly = false,
      required this.height,
      required this.width,
      this.controller,
      this.focusNode,
      this.hintText,
      this.errorText,
      this.onChanged,
      this.suffixIcon,
      this.inputType = TextInputType.text,
      this.validator,
      this.onEditingComplete,
      this.inputFormatters,
      this.onSaved})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: getMargin(left: 19, right: 19),
      height: height,
      width: width,
      child: TextFormField(
          controller: controller,
          focusNode: focusNode,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            helperStyle: GoogleFonts.aladin(
              textStyle: Theme.of(context).textTheme.titleLarge,
              color: ColorsConstants.black900,
              fontWeight: FontWeight.bold,
            ),
            hintText: hintText,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
          autocorrect: false,
          keyboardType: inputType,
          validator: validator,
          onChanged: onChanged,
          readOnly: isReadOnly,
          onEditingComplete: onEditingComplete,
          inputFormatters: inputFormatters,
          onSaved: (String? input) {
            String value = input != null ? input.trim() : "";
            onSaved?.call(value);
          }),
    );
  }
}
