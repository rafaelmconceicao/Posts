import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:posts/generated/l10n.dart';
import 'package:posts/src/core/features.dart';
import 'package:posts/src/features/login/presentation/pages/login.dart';
import 'package:posts/src/presentation/mobx/base_page.dart';
import 'package:posts/src/utils/helper/colors_helper.dart';
import 'package:posts/src/utils/helper/image_helper.dart';
import 'package:posts/src/utils/helper/text_styles.dart';
import 'package:posts/src/utils/helper/textformfield_helper.dart';
import 'package:posts/src/utils/ui/components/dialogs.dart';
import 'package:posts/src/utils/ui/widgets/disabled_button.dart';
import 'package:posts/src/utils/ui/widgets/enabled_button.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends BaseState<Registration, RegisterController> {
  @override
  Widget build(BuildContext context) {
    var strings = S.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  color: ThemeApp.primary,
                  child: Column(
                    children: [
                      const Spacer(),
                      Image.asset(
                        BotImageHelper.logo,
                        color: ThemeApp.light,
                        height: 60,
                        width: MediaQuery.of(context).size.width - 60,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Observer(
                    builder: (context) {
                      return Form(
                        key: controller!.formKeyRegister,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Text(
                                  strings.registerTitlePage,
                                  style: BotTextStyles.registerTitlePage,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            BotTextFormField(
                              hintText: strings.nameHintText,
                              onChanged: controller!.setName,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            BotTextFormField(
                              hintText: strings.emailHintText,
                              onChanged: controller!.setEmail,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Observer(builder: (context) {
                              return BotTextFormField(
                                hintText: strings.passwordHintText,
                                onChanged: controller!.setPassword,
                                obscureText: !controller!.passwordVisible,
                                keyboardType: TextInputType.visiblePassword,
                                maxLines: 1,
                                containsSuffix: GestureDetector(
                                  onTap: controller!.toggleVisible,
                                  child: controller!.passwordVisible
                                      ? const Icon(Icons.visibility)
                                      : const Icon(Icons.visibility_off),
                                ),
                              );
                            }),
                            const SizedBox(
                              height: 30,
                            ),
                            Observer(builder: (context) {
                              return controller!.isFormValid
                                  ? EnabledButton(
                                onPressed: () {
                                  controller!.register(context);
                                },
                                title: strings.registerTitleButton,
                              )
                                  : DisabledButton(
                                  title: strings.registerTitleButton);
                            })
                          ],
                        ),
                      );
                    }
                  )
                ),
                Expanded(child: Container()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      strings.alreadyHaveAnAccount,
                      style: BotTextStyles.alreadyHaveAnAccountTitle,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        strings.signInButton,
                        style: BotTextStyles.signInTitleButton,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
