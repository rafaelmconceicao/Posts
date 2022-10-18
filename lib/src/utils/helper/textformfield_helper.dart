import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:posts/generated/l10n.dart';
import 'package:posts/src/utils/helper/colors_helper.dart';


class BotTextFormField extends StatefulWidget {
  const BotTextFormField({
    this.autoFocus = false,
    this.labelText,
    this.textEditingController,
    this.focusNode,
    this.emptyErrorMessage,
    this.invalidErrorMessage,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.onEditingComplete,
    this.obscureText = false,
    this.initialValue,
    this.textCapitalization,
    this.onSubmitted,
    this.inputFormatters,
    this.autoCorrect,
    this.enableInteractiveSelection,
    this.fillColor,
    this.textAlign = TextAlign.start,
    this.status,
    this.hintText,
    this.containsSuffix,
    this.emptyMessage,
    this.maxLines,
    this.maxLenght,
    Key? key,
  })  : assert(
  (initialValue != null && textEditingController != null) ||
      initialValue == null,
  'If an initial value is provided, '
      'so must a TextEditingController!'),
        super(key: key);

  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final String? emptyErrorMessage;
  final String? invalidErrorMessage;
  final String? labelText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final bool obscureText;
  final String? initialValue;
  final TextCapitalization? textCapitalization;
  final Function(String)? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final bool? autoCorrect;
  final bool? enableInteractiveSelection;
  final Color? fillColor;
  final TextAlign textAlign;
  final bool autoFocus;
  final InputStatus? status;
  final String? hintText;
  final Widget? containsSuffix;
  final String? emptyMessage;
  final int? maxLines;
  final int? maxLenght;

  @override
  _BotTextFormFieldState createState() => _BotTextFormFieldState();
}

class _BotTextFormFieldState extends State<BotTextFormField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = (widget.focusNode ?? FocusNode())
      ..addListener(() {
        // Rebuild widget to repaint label with the same color as Border
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    final initialValue = widget.initialValue;
    final textEditingController = widget.textEditingController;
    if (widget.status == InputStatus.undefined &&
        (initialValue != null && textEditingController != null)) {
      textEditingController
        ..text = initialValue
        ..selection = TextSelection.collapsed(offset: initialValue.length);

      widget.onChanged?.call(initialValue);
    }
    final status = widget.status;

    final errorMessage = (status == InputStatus.invalid)
        ? (widget.invalidErrorMessage ??
        S.of(context).textFieldGenericInvalidError)
        : ((status == InputStatus.empty)
        ? (widget.emptyErrorMessage ??
        S.of(context).textFieldGenericEmptyError)
        : null);

    final isInvalidOrEmpty =
        status == InputStatus.invalid || status == InputStatus.empty;
    final isNotEmpty = textEditingController != null &&
        textEditingController.text.isNotEmpty;
    final isInvalid = status == InputStatus.invalid;
    final isInvalidWithText = isInvalid && isNotEmpty;
    final hasFocus = _focusNode.hasFocus;

    final labelColor = hasFocus || isInvalidWithText
        ? isInvalidOrEmpty
        ? ThemeApp.error
        : ThemeApp.primary
        : ThemeApp.neutral;

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10.0),
         ),
      child: TextFormField(
        initialValue: widget.initialValue,
        autofocus: widget.autoFocus,
        controller: textEditingController,
        focusNode: _focusNode,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: const BorderSide(color: ThemeApp.black)
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: ThemeApp.secondary)
          ),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: ThemeApp.error)
          ),
          hintText: widget.hintText,
          hintStyle: const TextStyle(
              fontSize: 14,
              color: ThemeApp.black,
              fontWeight: FontWeight.w300),
          labelStyle:
              TextStyle(
                color: labelColor,
                fontSize: 16,
              ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: widget.containsSuffix,
          ),
          suffixIconConstraints: const BoxConstraints(
            maxHeight: 25,
          ),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        ),
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        onEditingComplete: widget.onEditingComplete,
        onChanged: widget.onChanged,
        obscureText: widget.obscureText,
        style: const TextStyle(
            fontSize: 14,
            color: ThemeApp.black,
            fontWeight: FontWeight.w300),
        onFieldSubmitted: (dynamic value) {
          FocusScope.of(context).requestFocus(_focusNode);
        },
        maxLines: widget.maxLines,
        maxLength: widget.maxLenght,
        textCapitalization:
        widget.textCapitalization ?? TextCapitalization.none,
        inputFormatters: widget.inputFormatters,
        autocorrect: widget.autoCorrect ?? true,
        enableInteractiveSelection: widget.enableInteractiveSelection ?? true,
        validator: (value) {
          if (value!.isEmpty) {
            return errorMessage;
          }
          return null;
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
  }
}

enum InputStatus { empty, invalid, valid, undefined }

