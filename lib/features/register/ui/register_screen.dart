import 'package:base_project/core/helpers/extensions.dart';
import 'package:base_project/core/widgets/app_text_button.dart';
import 'package:base_project/features/logIn/ui/widgets/terms_and_conditions_text.dart';
import 'package:base_project/features/register/logic/register_cubit.dart';
import 'package:base_project/features/register/ui/widgets/already_have_an%20account_register.dart';
import 'package:base_project/features/register/ui/widgets/register_bloc_Listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/app_regex.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/text_styles.dart';
import '../../../core/widgets/app_text_form_field.dart';
import '../../logIn/ui/widgets/password_validations.dart';
import '../data/models/register_request_body.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();

  late TextEditingController passwordController;

  TextEditingController nameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordConfirmationController =
      TextEditingController();

  final registerFormKey = GlobalKey<FormState>();

  bool isObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
    setupPasswordControllerListener();
  }

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
                  'Create account',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(28),
                Form(
                  key: registerFormKey,
                  child: Column(
                    children: [
                      AppTextFormField(
                        hintText: 'name',
                        controller: nameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter a valid name";
                          }
                        },
                      ),
                      verticalSpace(18),
                      AppTextFormField(
                        controller: phoneNumberController,
                        hintText: 'phone number',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter a valid phone number";
                          }
                        },
                      ),
                      verticalSpace(18),
                      AppTextFormField(
                        hintText: 'Email',
                        controller: emailController,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !AppRegex.isEmailValid(value)) {
                            return "please enter a valid email";
                          }
                        },
                      ),
                      verticalSpace(18),
                      AppTextFormField(
                        controller: passwordController,
                        hintText: 'password',
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
                      verticalSpace(18),
                      AppTextFormField(
                        controller: passwordConfirmationController,
                        hintText: 'password Confirmation',
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

                          if (passwordController.text !=
                              passwordConfirmationController.text) {
                            return "passwords don't match";
                          }
                        },
                      ),
                      verticalSpace(16),
                      PasswordValidations(
                        hasLowercase: hasLowercase,
                        hasMinLength: hasMinLength,
                        hasUppercase: hasUppercase,
                        hasSpecialCharacters: hasSpecialCharacters,
                        hasNumber: hasNumber,
                      ),
                      verticalSpace(18),
                      AppTextButton(
                          buttonText: 'create account ',
                          textStyle: TextStyles.font16WhiteSemiBold,
                          onPressed: () {
                            validateThenDoRegister(context);
                          }),
                      verticalSpace(24),
                      const TermsAndConditionsText(),
                      verticalSpace(18),
                      AlreadyHaveAccountTextRegister(function: () {
                        context.pushReplacementNamed(Routes.loginScreen);
                      }),
                      const RegisterBlocListener(),
                      verticalSpace(24),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoRegister(BuildContext context) {
    if (registerFormKey.currentState!.validate()) {
      context.read<RegisterCubit>().emitRegisterStates(
            RegisterRequestBody(
              email: emailController.text,
              password: passwordController.text,
              name: nameController.text,
              phone: phoneNumberController.text,
              gender: '0',
              passwordConfirmation: passwordConfirmationController.text,
            ),
          );
    }
  }
}
