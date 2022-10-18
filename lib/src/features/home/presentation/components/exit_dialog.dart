import 'package:flutter/material.dart';
import 'package:posts/generated/l10n.dart';
import 'package:posts/src/features/login/presentation/pages/login.dart';
import 'package:posts/src/utils/authentication_storage/authentication_storage.dart';
import 'package:posts/src/utils/helper/colors_helper.dart';

class ExitDialog extends StatefulWidget {
  const ExitDialog({Key? key}) : super(key: key);

  @override
  State<ExitDialog> createState() => _ExitDialogState();
}

class _ExitDialogState extends State<ExitDialog> {

  @override
  Widget build(BuildContext context) {
    var strings = S.of(context);
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 10,),
                Text(
                  strings.exitApplication,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10,),
                Text(
                 strings.reallyLogOut,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 17),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child:
                        Text(strings.cancelTitleButton)
                    ),
                    SizedBox(
                      //width: 130,
                      height: 45,
                      child: TextButton(
                        onPressed: () {
                          AuthenticationStorage.authenticatedUser = null;
                          Navigator.pushAndRemoveUntil(
                              context, MaterialPageRoute(
                              builder: (builder) => const Login()), (route) => false);
                        },
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: ThemeApp.primary,
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            primary: Colors.white24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              strings.exitTitleButton,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
