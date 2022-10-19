import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:summit_ias/core/constant/colors.dart';
import 'package:summit_ias/core/constant/sizes.dart';

class TextFeildWidget extends StatelessWidget {
  const TextFeildWidget({
    Key? key,
    this.labelText,
    this.hintText,
    this.fontSize,
    this.isHint = false,
    this.textInputType,
    this.textCapitalization = TextCapitalization.none,
    this.inputFormatters,
    this.textDirection,
    this.maxLines,
    this.couterText,
    this.controller,
    this.inputBorder,
    this.enabledBorder,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconConstraints,
    this.autovalidateMode,
    this.validator,
    this.errorStyle = false,
    this.focusNode,
    this.enabled,
    this.isDense,
    this.contentPadding,
    this.constraints,
    this.readOnly,
    this.onSaved,
    this.onChanged,
    this.onTap,
    this.obscureText,
    this.floatingLabelBehavior,
    this.color,
    this.outerLable,
    this.outerStar = false,
    this.outerFontSize,
    this.focusedBorder,
    this.disabledBorder,
    this.maxLength,
    this.textAlign = TextAlign.start,
  }) : super(key: key);
  final String? labelText;
  final String? hintText;
  final double? fontSize;
  final Color? color;
  final bool isHint;
  final TextInputType? textInputType;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final TextDirection? textDirection;
  final int? maxLines;
  final String? couterText;
  final InputBorder? inputBorder;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? disabledBorder;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final BoxConstraints? suffixIconConstraints;
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final bool? enabled;
  final bool? readOnly;
  final bool? isDense;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  final Function()? onTap;
  final BoxConstraints? constraints;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final EdgeInsetsGeometry? contentPadding;
  final bool? obscureText;
  final bool errorStyle;
  final String? outerLable;
  final bool outerStar;
  final double? outerFontSize;
  final int? maxLength;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    if (outerLable == null) {
      return TextFormField(
        textAlignVertical: TextAlignVertical.center,
        textAlign: textAlign,
        controller: controller,
        maxLength: maxLength,
        style: TextStyle(color: color, fontSize: fontSize),
        decoration: InputDecoration(
          floatingLabelBehavior: floatingLabelBehavior,
          counterText: couterText,
          counter: const Offstage(),
          labelText: isHint ? null : labelText,
          hintText: isHint ? labelText : hintText,
          hintStyle: TextStyle(fontSize: fontSize),
          labelStyle: TextStyle(color: kColorDim, fontSize: fontSize),
          border: inputBorder ?? const UnderlineInputBorder(),
          enabledBorder:
              enabledBorder ?? inputBorder ?? const UnderlineInputBorder(),
          focusedBorder:
              focusedBorder ?? inputBorder ?? const UnderlineInputBorder(),
          disabledBorder:
              disabledBorder ?? inputBorder ?? const UnderlineInputBorder(),
          fillColor: kWhite,
          filled: true,
          prefixIcon: prefixIcon,
          prefixIconConstraints: BoxConstraints.tight(const Size(40, 40)),
          suffixIcon: suffixIcon,
          suffixIconConstraints: suffixIconConstraints,
          isDense: isDense ?? true,
          errorStyle: errorStyle ? const TextStyle(fontSize: 0.01) : null,
          constraints: constraints,
          contentPadding: contentPadding,
        ),
        keyboardType: textInputType ?? TextInputType.text,
        textCapitalization: textCapitalization,
        inputFormatters: inputFormatters,
        textDirection: textDirection ?? TextDirection.ltr,
        maxLines: maxLines ?? 1,
        autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
        validator: validator,
        focusNode: focusNode,
        enabled: enabled ?? true,
        readOnly: readOnly ?? false,
        onSaved: onSaved,
        onChanged: onChanged,
        onTap: onTap,
        obscureText: obscureText ?? false,
      );
    } else {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                text: outerLable,
                style: TextStyle(color: kBlack, fontSize: outerFontSize),
                children: outerStar
                    ? [
                        const TextSpan(
                            text: '*', style: TextStyle(color: primaryColor))
                      ]
                    : null),
          ),
          kHeight5,
          TextFormField(
            textAlignVertical: TextAlignVertical.center,
            controller: controller,
            style: TextStyle(color: color, fontSize: fontSize),
            decoration: InputDecoration(
              floatingLabelBehavior: floatingLabelBehavior,
              counterText: couterText,
              labelText: isHint ? null : labelText,
              hintText: isHint ? labelText : hintText,
              hintStyle: TextStyle(fontSize: fontSize),
              labelStyle: TextStyle(color: kColorDim, fontSize: fontSize),
              border: inputBorder ?? const UnderlineInputBorder(),
              enabledBorder:
                  enabledBorder ?? inputBorder ?? const UnderlineInputBorder(),
              focusedBorder:
                  focusedBorder ?? inputBorder ?? const UnderlineInputBorder(),
              disabledBorder:
                  disabledBorder ?? inputBorder ?? const UnderlineInputBorder(),
              fillColor: kWhite,
              filled: true,
              prefixIcon: prefixIcon,
              prefixIconConstraints: BoxConstraints.tight(const Size(40, 40)),
              suffixIcon: suffixIcon,
              suffixIconConstraints: suffixIconConstraints,
              isDense: isDense ?? true,
              errorStyle: errorStyle ? const TextStyle(fontSize: 0.01) : null,
              constraints: constraints,
              contentPadding: contentPadding,
            ),
            keyboardType: textInputType ?? TextInputType.text,
            textCapitalization: textCapitalization,
            inputFormatters: inputFormatters,
            textDirection: textDirection ?? TextDirection.ltr,
            maxLines: maxLines ?? 1,
            autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
            validator: validator,
            focusNode: focusNode,
            enabled: enabled ?? true,
            readOnly: readOnly ?? false,
            onSaved: onSaved,
            onChanged: onChanged,
            onTap: onTap,
            obscureText: obscureText ?? false,
          ),
        ],
      );
    }
  }
}
