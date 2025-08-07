import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/core/utils/utils.dart';
import 'package:shoppi/features/authentication/authentication.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  final Function(bool?) onResults;
  const LoginPage({Key? key, required this.onResults}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var obsecureText = true;

  _login() {
    if (_formKey.currentState!.validate()) {
      var loginParam = LoginParam(
        email: emailcontroller.text,
        password: passwordController.text,
      );
      BlocProvider.of<AuthCubit>(context).login(loginParam);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                InputFields(
                  controller: emailcontroller,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Email is required";
                    }
                    return null;
                  },
                  hintText: 'Enter your email',
                  title: 'Email',
                ),
                const SizedBox(height: 10),
                InputFields(
                  controller: passwordController,
                  obscureText: obsecureText,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obsecureText = !obsecureText;
                      });
                    },
                    icon: Icon(
                      !obsecureText
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Palette.Primary.withValues(alpha: 0.5),
                    ),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Password is required";
                    }
                    return null;
                  },
                  hintText: 'password',
                  title: 'Password',
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  child: BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state.userStatus == UserStatus.loading) {
                        showDialog(
                          context: context,
                          builder: (ctx) {
                            return LoadingDialog();
                          },
                        );
                      } else if (state.userStatus == UserStatus.loaded) {
                        Navigator.pop(context);
                        widget.onResults.call(true);
                        ToastHelper.showSuccess(
                          context: context,
                          title: 'Success',
                          message: 'Login successful',
                        );
                      } else if (state.userStatus == UserStatus.failure) {
                        Navigator.pop(context);
                        ToastHelper.showError(
                          context: context,
                          title: 'Error',
                          message: state.error!,
                        );
                      }
                    },
                    builder: (context, state) {
                      return CustomNeumorphicButton(
                        onTap: _login,
                        text: 'login',
                        // textColor: Colors.white,
                      );
                    },
                  ),
                ),

                const SizedBox(height: 10),
                Center(
                  child: Text.rich(
                    TextSpan(
                      text: "Don't have an account? ",
                      style: const TextStyle(
                        color: Color(0xff667085),
                        fontSize: 18,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Sign up",
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: Palette.mainColor,
                          ),
                          recognizer:
                              TapGestureRecognizer()
                                ..onTap = () {
                                  context.router.push(const SignUpRoute());
                                },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
