import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
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
import 'package:magic_rewards/modules/auth/domain/entities/user_entity.dart';
import 'package:magic_rewards/modules/auth/presentation/blocs/login/login_bloc.dart';
import 'package:magic_rewards/modules/auth/presentation/routes/register_route.dart';
import 'package:magic_rewards/modules/home/presentation/routes/main_route.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _logInTapped(BuildContext context) {
    context.read<LoginBloc>().add(LoginButtonTappedEvent(
        username: _usernameController.text,
        password: _passwordController.text));
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: ListView(
        children: [
          SizedBox(height: 120.h),
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
          Text(S.of(context).signIn, style: context.f16600),
          const SizedBox(height: 30),
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
          const SizedBox(height: 20),
          BlocConsumer<LoginBloc, BaseState<UserEntity>>(
              listener: (context, state) {
            if (state.isSuccess) {
              showToast(message: S.of(context).loggedInSuccessfully);
              context.go(MainRoute.name);
            } else if (state.isError) {
              FailureComponent.handleFailure(
                  context: context, failure: state.failure);
            }
          }, builder: (context, state) {
            return AppButton(
              text: S.of(context).signIn,
              loading: state.isLoading,
              type: AppButtonType.gradientBlue,
              onPressed: () => _logInTapped(context),
            );
          }),
          const SizedBox(height: 30),
          AppRichText(
              text: S.of(context).dontHaveAnAccount,
              buttonText: S.of(context).signUp,
              onTap: () {
                context.go(RegisterRoute.name);
              }),
        ],
      ),
    );
  }
}
