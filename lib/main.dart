import 'package:bloody/core/utils/cache.dart';
import 'package:bloody/core/utils/themes.dart';
import 'package:bloody/features/donation/presentation/views/donation_history.dart';
import 'package:bloody/features/home/presentation/manager/cubit/app_themes_cubit.dart';
import 'package:bloody/features/home/presentation/views/donatation_page.dart';
import 'package:bloody/features/home/presentation/views/dontation_page_sec.dart';
import 'package:bloody/features/home/presentation/views/register_donatation.dart';
import 'package:bloody/features/home/presentation/views/settings.dart';
import 'package:bloody/features/donation/presentation/views/terms_and_conditions.dart';
import 'package:bloody/features/home/presentation/views/home.dart';
import 'package:bloody/features/home/presentation/views/thank_you_page.dart';
import 'package:bloody/features/on_boarding/presentation/views/on_boarding.dart';
import 'package:bloody/features/on_boarding/presentation/views/splash_page.dart';
import 'package:bloody/features/register/presentation/views/create_new_password.dart';
import 'package:bloody/features/register/presentation/views/forget_password.dart';
import 'package:bloody/features/register/presentation/views/login_page.dart';
import 'package:bloody/features/register/presentation/views/update_page.dart';
import 'package:bloody/features/register/presentation/views/register_page.dart';
import 'package:bloody/features/register/presentation/views/verify_methods.dart';
import 'package:bloody/features/register/presentation/views/otp_code_phone.dart';
import 'package:bloody/features/register/presentation/views/verify_by_email.dart';
import 'package:bloody/features/register/presentation/views/verify_by_phone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheNetwork.cacheInitialization();
  runApp(const BloodApp());
}

bool isLightTheme(ThemeData themeData) {
  return themeData == ThemeData.light();
}

class BloodApp extends StatelessWidget {
  const BloodApp({super.key});
  static String tocken = "";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppThemesCubit(),
      child: BlocBuilder< AppThemesCubit,ThemeData>(
        builder: (context, state) {
          return MaterialApp(
            theme: isLightTheme(state)?darkTheme:lightTheme,
            debugShowCheckedModeBanner: false,
            routes: {
              VerifyMethods.id: (context) => const VerifyMethods(),
              VerifyByPhone.id: (context) => const VerifyByPhone(),
              OtpCodePhone.id: (context) => const OtpCodePhone(),
              VerifyByEmail.id: (context) => const VerifyByEmail(),
              LoginPage.id: (context) => const LoginPage(),
              ForgetPassword.id: (context) => const ForgetPassword(),
              DonationPage.id: (context) => const DonationPage(),
              DonationPageSec.id: (context) => const DonationPageSec(),
              CreateNewPassword.id: (context) => const CreateNewPassword(),
              DonationHistory.id: (context) => const DonationHistory(),
              Settings.id: (context) => const Settings(),
              TermsAndConditions.id: (context) => const TermsAndConditions(),
              Home.id: (context) => const Home(),
              RegisterPage.id: (context) => const RegisterPage(),
              UpdatePage.id: (context) => const UpdatePage(),
              ThankYouPage.id: (context) => const ThankYouPage(),
              RegisterDonation.id: (context) => const RegisterDonation(),
              SplashPage.id: (context) => const SplashPage(),
              OnBoarding.id: (context) =>  OnBoarding(),
            },
            initialRoute: SplashPage.id,
          );
        },
      ),
    );
  }
}
