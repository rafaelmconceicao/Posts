import 'package:flutter/material.dart';
import 'package:posts/src/utils/helper/colors_helper.dart';
import 'package:posts/src/utils/helper/text_styles.dart';

class EnabledButton extends StatelessWidget {
  const EnabledButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          primary: ThemeApp.primary,
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
        child: Text(
          title.toUpperCase(),
          style: BotTextStyles.titleButtonEnabled,
        ),
      ),
    );
  }
}
