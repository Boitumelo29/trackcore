import 'package:flutter/material.dart';
import 'package:trackcore/common_widgets/widgets/textfield/textfields.dart';
import 'package:trackcore/utils/strings/strings.dart';
import 'package:trackcore/utils/validation/validation.dart';

class LoginPassword extends StatelessWidget {
  final TextEditingController password;
  final FocusNode passwordFocus;

  const LoginPassword(
      {super.key, required this.password, required this.passwordFocus});

  @override
  Widget build(BuildContext context) {
    return LongTextFieldForm(
      isRed: false,
      showPrefixIcon: true,
      prefixIcon: Icons.password,
      focusNode: passwordFocus,
      validator: (value) {
        return Validation.passwordValidation(value);
      },
      obsureText: true,
      showSuffixIcon: true,
      hintText: Strings.password,
      labelText: Strings.password,
      controller: password,
      onChanged: (value) {},
    );
  }
}
