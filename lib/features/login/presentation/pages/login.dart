import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/routes/routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/components.dart';
import '../cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.loginBackground),
              fit: BoxFit.fill,
            ),
          ),
          child: Scaffold(

            backgroundColor: Colors.transparent,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DefaultFormField(
                      fillColor: AppColors.bottomPurple,
                      controller: LoginCubit.get(context).loginController,
                      type: TextInputType.text,
                      validate: (value) {
                        return null;
                      },
                      label: 'Enter your secret key'),
                  SizedBox(
                    height: 30.h,
                  ),
                  DefaultButton(
                      background: AppColors.bottomTealBlue,
                      function: () {
                        Navigator.pushNamedAndRemoveUntil(context, Routes.home, (route) => false);
                      },
                      height: 64.h,
                      text: 'login'),
                  SizedBox(
                    height: 146.h,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
