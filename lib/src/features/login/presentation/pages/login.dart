import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:posts/generated/l10n.dart';
import 'package:posts/src/core/features.dart';
import 'package:posts/src/features/registration/presentation/pages/registration.dart';
import 'package:posts/src/presentation/mobx/base_page.dart';
import 'package:posts/src/utils/helper/colors_helper.dart';
import 'package:posts/src/utils/helper/image_helper.dart';
import 'package:posts/src/utils/helper/text_styles.dart';
import 'package:posts/src/utils/helper/textformfield_helper.dart';
import 'package:posts/src/utils/ui/widgets/disabled_button.dart';
import 'package:posts/src/utils/ui/widgets/enabled_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends BaseState<Login, LoginController> {
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
                child: Observer(builder: (context) {
                  return Form(
                    key: controller!.formKeyLogin,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Text(
                              strings.loginTitlePage,
                              style: BotTextStyles.loginTitlePage,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
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
                                    controller!.login(context);
                                  },
                                  title: strings.loginTitleButton,
                                )
                              : DisabledButton(title: strings.loginTitleButton);
                        })
                      ],
                    ),
                  );
                }),
              ),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    strings.notHaveAccount,
                    style: BotTextStyles.notHaveAccountTitle,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const Registration()));
                    },
                    child: Text(
                      strings.registerButton,
                      style: BotTextStyles.registerTitleButton,
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
    ));
  }
}
