import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:up_care_v1/providers/settings_providers.dart';
import 'package:up_care_v1/screens/appointment_screen/appointment_screen_view.dart';
import 'package:up_care_v1/screens/chat_screen/chat_screen_view.dart';
import 'package:up_care_v1/screens/chat_screen/specific_chat.dart';
import 'package:up_care_v1/screens/history_screen/history_details.dart';
import 'package:up_care_v1/screens/home_screen/notification_screen_view.dart';
import 'package:up_care_v1/screens/payment_screen/payment_screen_view.dart';
import 'package:up_care_v1/screens/settings_screen/change_password_view.dart';
import 'package:up_care_v1/screens/settings_screen/feedback_screen_view.dart';
import 'package:up_care_v1/screens/home_screen/home_layout.dart';
import 'package:up_care_v1/screens/settings_screen/settings_screen_view.dart';
import 'package:up_care_v1/screens/specialists_screen/specialist_doctors_view.dart';
import 'package:up_care_v1/screens/login_screen/login_screen_view.dart';
import 'package:up_care_v1/screens/register_screen/register_screen_view.dart';
import 'package:up_care_v1/screens/splash_screen/splash_screen_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main () {
  runApp( ChangeNotifierProvider(
    create: (_)=>SettingProvider(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  late SettingProvider provider;
   //MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Up Care",
      locale:  Locale(provider.currentLocale),
      localizationsDelegates: const [
          AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],   
     supportedLocales: const [Locale("en"),Locale("ar")],

      initialRoute: SplashScreenView.routeName,
      routes: {
        SplashScreenView.routeName: (context) => const SplashScreenView(),
        LoginScreenView.routeName: (context) => const LoginScreenView(),
        RegisterScreenView.routeName: (context) => const RegisterScreenView(),
        HomeLayout.routeName: (context) =>  const HomeLayout(),
        SpecialistDoctorsView.routeName: (context) =>  const SpecialistDoctorsView(),
        AppointmentScreenView.routeName: (context) =>  const AppointmentScreenView(),
        SettingsScreenView.routeName: (context) => const SettingsScreenView(),
        ChatScreenView.routeName: (context) => const ChatScreenView(),
        ChatScreen.routeName: (context) => const ChatScreen(),
        FeedbackScreenView.routName: (context) => const FeedbackScreenView(),
        ChangePassword.routeName: (context) => const ChangePassword(),
        NotificationScreen.routName: (context) =>  const NotificationScreen(),
        HistoryDetails.routeName: (context) => const HistoryDetails(),
        PaymentScreenView.routeName: (context) => const PaymentScreenView(),


      },
    );
  }
}
