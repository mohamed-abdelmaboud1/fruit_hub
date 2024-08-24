import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helper/show_custom_snack_bar.dart';
import '../../../../core/routing/app_router.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../logic/sign_in_cubit/sign_in_cubit.dart';
import '../widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: 'تسجيل الدخول',
      ),
      body: BlocConsumer<SignInCubit, SignInState>(
        listener: (context, state) {
          if (state is SignInSuccess) {
            showCustomSnackBar(
              context,
              'تم تسجيل الدخول بنجاح',
            );
            context.go(AppRouter.home);
          }
          if (state is SignUpFailure) {
            showCustomSnackBar(
              context,
              state.message,
              isError: true,
            );
          }
        },
        builder: (context, state) {
          return LoginViewBody();
        },
      ),
    );
  }
}
