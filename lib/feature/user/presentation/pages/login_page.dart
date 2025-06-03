import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trackcore/common_widgets/screens/user_layout/user_layout_screen.dart';
import 'package:trackcore/common_widgets/sized_box/sized_space.dart';
import 'package:trackcore/common_widgets/widgets/buttons/long_button.dart';
import 'package:trackcore/core/routes/router.dart';
import 'package:trackcore/feature/auth/data/auth_repo.dart';
import 'package:trackcore/feature/user/bloc/login_bloc.dart';
import 'package:trackcore/feature/user/presentation/widget/email.dart';
import 'package:trackcore/feature/user/presentation/widget/trackcore_text.dart';
import 'package:trackcore/feature/user/presentation/widget/track_core_sub_text.dart';
import 'package:trackcore/feature/user/presentation/widget/password.dart';
import 'package:trackcore/utils/strings/strings.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(authRepository: AuthRepository()),
      child: LoginView(),
    );
  }
}

class LoginView extends StatefulWidget {
  final VoidCallback? show;

  const LoginView({super.key, this.show});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  FocusNode emailFocus = FocusNode();
  TextEditingController password = TextEditingController();
  FocusNode passwordFocus = FocusNode();
  bool isLoading = false;
  bool isForgotPasswordLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: _listener,
      builder: (context, state) {
        return UserLayoutScreen(
          children: [
            const TrackCoreText(),
            const TrackCoreSubText(),
            const SizedSpace(
              height: 60,
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    LoginEmail(
                      email: email,
                      emailFocus: emailFocus,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    LoginPassword(
                      password: password,
                      passwordFocus: passwordFocus,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    LongButton(
                      isLoading: isLoading,
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<LoginBloc>().add(
                                LoginSubmitted(
                                    email: email.text, password: password.text),
                              );
                        }
                      },
                      title: Strings.login,
                    ),
                    const SizedSpace(
                      height: 10,
                    ),
                  ],
                ))
          ],
        );
      },
    );
  }

  void _listener(BuildContext context, LoginState state) {
    if (state.status == LoginStatus.success) {
      context.router.pushAndPopUntil(
        const HomeRoute(),
        predicate: (_) => false,
      );
    } else if (state.status == LoginStatus.failure) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid email or password'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
