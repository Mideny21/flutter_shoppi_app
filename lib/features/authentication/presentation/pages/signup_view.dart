import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppi/core/common/widgets/widget.dart';
import 'package:shoppi/core/utils/utils.dart';
import 'package:shoppi/features/authentication/authentication.dart';
import 'package:shoppi/features/authentication/presentation/cubit/auth_cubit.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool check = false;
  var obsecureText = true;
  var obsecureText2 = true;

  _signUp() {
    if (_formKey.currentState!.validate()) {
      if (!check) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Please accept term and conditions")),
        );
      } else if (passwordController.text != confirmPasswordController.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Password does not match")),
        );
      } else {
        var signupParam = CreateUserParam(
          name: namecontroller.text,
          email: emailcontroller.text,
          password: passwordController.text,
          address: '',
        );
        BlocProvider.of<AuthCubit>(context).register(signupParam);
      }
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    namecontroller.dispose();
    emailcontroller.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Sign Up',
                    style: TextStyle(fontFamily: 'Inter', fontSize: 28),
                  ),
                  const SizedBox(height: 18),
                  InputFields(
                    controller: namecontroller,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return " Name is required";
                      }
                      return null;
                    },
                    hintText: 'Enter  name',
                    title: 'Your Name',
                  ),
                  const SizedBox(height: 10),
                  InputFields(
                    controller: emailcontroller,
                    keyboard: TextInputType.emailAddress,
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
                        color: Palette.Primary.withOpacity(0.5),
                      ),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Password is required";
                      }
                      return null;
                    },
                    hintText: 'Enter your password',
                    title: 'Password',
                  ),
                  const SizedBox(height: 10),
                  InputFields(
                    controller: confirmPasswordController,
                    obscureText: obsecureText2,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obsecureText2 = !obsecureText2;
                        });
                      },
                      icon: Icon(
                        !obsecureText2
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Palette.Primary.withOpacity(0.5),
                      ),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Confirmm Password is required";
                      }
                      return null;
                    },
                    hintText: 'Confirm password',
                    title: 'Confirm Password',
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(
                      //   Icons.check_box_outline_blank_rounded,
                      //   size: 24.sp,
                      //   color: const Color(0xff667085),
                      // ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            check = !check;
                          });
                        },
                        icon:
                            check
                                ? Icon(
                                  Icons.check_box_rounded,
                                  size: 24,
                                  color: Palette.Primary,
                                )
                                : const Icon(
                                  Icons.check_box_outline_blank_rounded,
                                  size: 24,
                                  color: Color(0xff667085),
                                ),
                      ),
                      Text.rich(
                        TextSpan(
                          text: "I agree to Shopping  ",
                          style: const TextStyle(
                            fontFamily: 'Inter',
                            color: Color(0xff667085),
                            fontSize: 15,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Terms & Conditions",
                              style: const TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                color: Palette.mainColor,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      // TODO: implement listener
                      if (state.status == UserStatus.loading) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const LoadingDialog();
                          },
                        );
                      } else if (state.status == UserStatus.loaded) {
                        context.pop();
                        context.read<AuthCubit>().onLoginToggle();
                      } else if (state.status == UserStatus.error) {
                        context.pop();
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(state.error)));
                      }
                    },
                    builder: (context, state) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        child: CustomNeumorphicButton(
                          onTap: _signUp,
                          text: 'Sign Up',
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        text: "Have an account? ",
                        style: const TextStyle(
                          color: Color(0xff667085),
                          fontSize: 18,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Login",
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                              color: Palette.mainColor,
                            ),
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap = () {
                                    context.pop();
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
      ),
    );
  }
}
