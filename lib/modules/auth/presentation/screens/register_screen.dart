import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/constants/app_colors.dart';
import 'package:magic_rewards/core/constants/app_gradient.dart';
import 'package:magic_rewards/core/core_compoent/app_button.dart';
import 'package:magic_rewards/core/core_compoent/app_container.dart';
import 'package:magic_rewards/core/core_compoent/app_logo.dart';
import 'package:magic_rewards/core/core_compoent/app_rich_text.dart';
import 'package:magic_rewards/core/core_compoent/app_scaffold.dart';
import 'package:magic_rewards/core/core_compoent/app_text_field.dart';
import 'package:magic_rewards/core/core_compoent/failuer_component.dart';
import 'package:magic_rewards/core/core_compoent/show_toast.dart';
import 'package:magic_rewards/core/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/core/utils/app_validator.dart';
import 'package:magic_rewards/core/utils/base_state.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/modules/auth/domain/entities/check_email_entity.dart';
import 'package:magic_rewards/modules/auth/domain/entities/user_entity.dart';
import 'package:magic_rewards/modules/auth/presentation/blocs/check_email/check_email_bloc.dart';
import 'package:magic_rewards/modules/auth/presentation/blocs/register/register_bloc.dart';
import 'package:magic_rewards/modules/auth/presentation/routes/login_route.dart';
import 'package:magic_rewards/modules/home/presentation/routes/main_route.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _secondaryEmailController =
      TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  String verifiedEmail = '';

  bool showNotificationsEmail = false;

  void _registerTapped(BuildContext context) {
    if (_formKey.currentState?.validate() ?? true) {
      if (verifiedEmail != _secondaryEmailController.text) {
        context.read<CheckEmailBloc>().add(
            CheckEmailButtonTappedEvent(email: _secondaryEmailController.text));
      } else {
        _register(context);
      }
    }
  }

  void _register(BuildContext context) {
    context.read<RegisterBloc>().add(RegisterButtonTappedEvent(
        userName: _usernameController.text,
        email: _emailController.text,
        password: _passwordController.text,
        fullName: _fullNameController.text,
        secondaryEmail: _secondaryEmailController.text));
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: ListView(
        children: [
          SizedBox(height: 50.h),
          AppContainer(
            child: _buildForm(context),
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }

  Form _buildForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppLogo(width: 50.w),
          const SizedBox(height: 10),
          Text(S.of(context).signUp, style: context.f16600),
          const SizedBox(height: 30),
          AppTextField(
            labelText: S.of(context).fullName,
            hintText: S.of(context).fullNameHint,
            controller: _fullNameController,
            validator: AppValidator(validators: [InputValidator.requiredField])
                .validate,
          ),
          AppTextField(
            labelText: S.of(context).username,
            hintText: S.of(context).usernameHint,
            controller: _usernameController,
            validator: AppValidator(validators: [
              InputValidator.requiredField,
              InputValidator.noSpaces
            ]).validate,
          ),
          AppTextField(
            labelText: S.of(context).email,
            hintText: S.of(context).emailHint,
            controller: _emailController,
            validator: AppValidator(validators: [
              InputValidator.requiredField,
              InputValidator.email
            ]).validate,
          ),
          AppTextField(
            labelText: S.of(context).password,
            hintText: S.of(context).passwordHint,
            controller: _passwordController,
            password: true,
            validator: AppValidator(minLength: 6, validators: [
              InputValidator.requiredField,
              InputValidator.noSpaces,
              InputValidator.minLength,
            ]).validate,
          ),
          AppTextField(
            labelText: S.of(context).confirmPassword,
            hintText: S.of(context).passwordHint,
            controller: _confirmPasswordController,
            password: true,
            validator: (text) {
              return text!.trim().isEmpty
                  ? S.current.requiredField
                  : text != _passwordController.text
                      ? S.of(context).thisFieldDoesntMatchTheNewPassword
                      : null;
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  child: Text(
                "Receive notifications via email?",
                style: context.f16400,
              )),
              Switch(
                  activeColor: AppColors.blue,
                  inactiveThumbColor: AppColors.grey1,
                  value: showNotificationsEmail,
                  onChanged: (val) {
                    setState(() {
                      showNotificationsEmail = val;
                    });
                  }),
            ],
          ),
          if (showNotificationsEmail) const SizedBox(height: 10),
          if (showNotificationsEmail)
            AppTextField(
              labelText: S.of(context).notificationsEmail,
              hintText: S.of(context).emailHint,
              controller: _secondaryEmailController,
              validator:
                  AppValidator(validators: [InputValidator.email]).validate,
            ),
          const SizedBox(height: 20),
          BlocConsumer<RegisterBloc, BaseState<UserEntity>>(
              listener: (context, state) {
            if (state.isSuccess) {
              showToast(message: S.of(context).signedUpScuccessfully);
              context.go(MainRoute.name);
            } else if (state.isError) {
              FailureComponent.handleFailure(
                  context: context, failure: state.failure);
            }
          }, builder: (context, state) {
            return BlocConsumer<CheckEmailBloc, BaseState<CheckEmailEntity>>(
                listener: (context, checkEmailState) {
              if (checkEmailState.isSuccess) {
                if (checkEmailState.data?.verifyCode != null) {
                  _showVerifyEmailDialog(
                      context, checkEmailState.data!.verifyCode!);
                } else {
                  _register(context);
                }
              } else if (checkEmailState.isError) {
                FailureComponent.handleFailure(
                    context: context, failure: checkEmailState.failure);
              }
            }, builder: (context, checkEmailState) {
              return AppButton(
                text: S.of(context).signUp,
                loading: state.isLoading || checkEmailState.isLoading,
                type: AppButtonType.gradientBlue,
                onPressed: () => _registerTapped(context),
              );
            });
          }),
          const SizedBox(height: 30),
          AppRichText(
            text: S.of(context).alreadyHaveAnAccount,
            buttonText: S.of(context).signIn,
            onTap: () {
              context.go(LoginRoute.name);
            },
          ),
        ],
      ),
    );
  }

  void _showVerifyEmailDialog(BuildContext context, String verifyCode) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController textController = TextEditingController();
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                gradient: AppGradients.dialogGradient,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                      "Enter Verification code sent to: ${_secondaryEmailController.text}",
                      style: context.f20700),
                  const SizedBox(height: 20),
                  Form(
                    key: formKey,
                    child: AppTextField(
                      controller: textController,
                      fillColor: AppColors.blue.withOpacity(0.5),
                      hintStyle:
                          context.f12400?.copyWith(color: AppColors.grey1),
                      style: context.f16600,
                      maxLength: 6,
                      validator: AppValidator(minLength: 6, validators: [
                        InputValidator.requiredField,
                        InputValidator.minLength,
                      ]).validate,
                      hintText: S.of(context).code,
                    ),
                  ),
                  const SizedBox(height: 20),
                  AppButton(
                      text: S.of(context).verify,
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          if (textController.text == verifyCode) {
                            showToast(
                                message:
                                    S.of(context).emailVerifiedSuccessfully);
                            verifiedEmail = _secondaryEmailController.text;
                            context.pop(true);
                          } else {
                            showToast(
                                message: S.of(context).wrongVerificationCode);
                          }
                        }
                      })
                ],
              ),
            ),
          );
        }).then((value) {
      if (value) {
        _register(context);
      }
    });
  }
}
