// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../../../core/helpers/app_regex.dart';
// import '../../../../core/helpers/spacing.dart';
// import '../../../../core/widgets/app_text_form_field.dart';
// import '../../../logIn/ui/widgets/password_validations.dart';
// import '../../data/models/register_request_body.dart';
// import '../../logic/register_cubit.dart';
//
// class RegisterTextFields extends StatefulWidget {
//   const RegisterTextFields({super.key});
//
//   @override
//   State<RegisterTextFields> createState() => _RegisterTextFieldsState();
// }
//
// class _RegisterTextFieldsState extends State<RegisterTextFields> {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//         key: registerFormKey,
//         child: Column(
//           children: [
//             AppTextFormField(
//               hintText: 'name',
//               controller: context.read<RegisterCubit>().nameController,
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return "please enter a valid name";
//                 }
//               },
//             ),
//             verticalSpace(18),
//             AppTextFormField(
//               controller: context.read<RegisterCubit>().phoneNumberController,
//               hintText: 'phone number',
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return "please enter a valid phone number";
//                 }
//               },
//             ),
//             verticalSpace(18),
//             AppTextFormField(
//               hintText: 'Email',
//               controller: context.read<RegisterCubit>().emailController,
//               validator: (value) {
//                 if (value == null ||
//                     value.isEmpty ||
//                     !AppRegex.isEmailValid(value)) {
//                   return "please enter a valid email";
//                 }
//               },
//             ),
//             verticalSpace(18),
//             AppTextFormField(
//               controller: passwordController,
//               hintText: 'password',
//               isObscureText: isObscureText,
//               suffixIcon: GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     isObscureText = !isObscureText;
//                   });
//                 },
//                 child: Icon(
//                   isObscureText ? Icons.visibility_off : Icons.visibility,
//                 ),
//               ),
//               validator: (value) {
//                 if (value == null ||
//                     value.isEmpty ||
//                     !AppRegex.isPasswordValid(value)) {
//                   return "please enter a valid password";
//                 }
//               },
//             ),
//             verticalSpace(18),
//             AppTextFormField(
//               controller:
//                   context.read<RegisterCubit>().passwordConfirmationController,
//               hintText: 'password Confirmation',
//               isObscureText: isObscureText,
//               suffixIcon: GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     isObscureText = !isObscureText;
//                   });
//                 },
//                 child: Icon(
//                   isObscureText ? Icons.visibility_off : Icons.visibility,
//                 ),
//               ),
//               validator: (value) {
//                 if (value == null ||
//                     value.isEmpty ||
//                     !AppRegex.isPasswordValid(value)) {
//                   return "please enter a valid password";
//                 }
//
//                 if (passwordController.text !=
//                     context
//                         .read<RegisterCubit>()
//                         .passwordConfirmationController
//                         .text) {
//                   return "passwords don\'t match";
//                 }
//               },
//             ),
//             verticalSpace(16),
//             PasswordValidations(
//               hasLowercase: hasLowercase,
//               hasMinLength: hasMinLength,
//               hasUppercase: hasUppercase,
//               hasSpecialCharacters: hasSpecialCharacters,
//               hasNumber: hasNumber,
//             ),
//             verticalSpace(16),
//           ],
//         ));
//   }
//
// }
//
