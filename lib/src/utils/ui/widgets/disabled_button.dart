import 'package:flutter/material.dart';
import 'package:posts/src/utils/helper/colors_helper.dart';
import 'package:posts/src/utils/helper/text_styles.dart';

class DisabledButton extends StatelessWidget {
  const DisabledButton({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: null,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          primary: ThemeApp.neutral,
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
        child: Text(
          title.toUpperCase(),
          style: BotTextStyles.titleButtonDisabled,
        ),
      ),
    );
  }
}
