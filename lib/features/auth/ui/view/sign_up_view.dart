import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/auth/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helper/show_custom_snack_bar.dart';
import '../widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: 'حساب جديد',
      ),
      body: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if (state is SignUpSuccess) {
            showCustomSnackBar(context, 'تم إنشاء الحساب بنجاح');
            context.pop();
          }
          if (state is SignUpFailure) {
            log(state.message);

            showCustomSnackBar(context, state.message, isError: true);
          }
        },
        builder: (context, state) {
          return SignUpViewBody();
        },
      ),
    );
  }
}
