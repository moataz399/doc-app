import 'package:base_project/core/helpers/extensions.dart';
import 'package:base_project/features/logIn/ui/widgets/already_have_account.dart';
import 'package:base_project/features/logIn/ui/widgets/login_bloc_listener.dart';
import 'package:base_project/features/logIn/ui/widgets/password_validations.dart';
import 'package:base_project/features/logIn/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../core/helpers/app_regex.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/text_styles.dart';
import '../../../core/widgets/app_text_form_field.dart';
import '../data/models/login_request_body.dart';
import '../logic/login_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  final  loginFormKey = GlobalKey<FormState>();
  late TextEditingController passwordController;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  bool isObscureText = true;

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
    setupPasswordControllerListener();
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   passwordController.dispose();
  // }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    Form(
                      key: loginFormKey,
                      child: Column(
                        children: [
                          AppTextFormField(
                              controller: emailController,
                              hintText: 'Email',
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    !AppRegex.isEmailValid(value)) {
                                  return "please enter a valid email";
                                }
                              }),
                          verticalSpace(18),
                          AppTextFormField(
                            controller: passwordController,
                            hintText: 'Password',
                            isObscureText: isObscureText,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isObscureText = !isObscureText;
                                });
                              },
                              child: Icon(
                                isObscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !AppRegex.isPasswordValid(value)) {
                                return "please enter a valid password";
                              }
                            },
                          ),
                          verticalSpace(24),
                          PasswordValidations(
                            hasLowercase: hasLowercase,
                            hasMinLength: hasMinLength,
                            hasUppercase: hasUppercase,
                            hasSpecialCharacters: hasSpecialCharacters,
                            hasNumber: hasNumber,
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: "Login",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(50),
                    AlreadyHaveAccountText(function: () {
                      context.pushReplacementNamed(Routes.registerScreen);
                    }),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (loginFormKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
            LoginRequestBody(
              email: emailController.text,
              password: passwordController.text,
            ),
          );
    }
  }
}
