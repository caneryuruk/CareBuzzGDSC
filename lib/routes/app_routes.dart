import 'package:flutter/material.dart';
import 'package:carebuzz/presentation/splashscreen_screen/splashscreen_screen.dart';
import 'package:carebuzz/presentation/one_screen/one_screen.dart';
import 'package:carebuzz/presentation/two_screen/two_screen.dart';
import 'package:carebuzz/presentation/three_screen/three_screen.dart';
import 'package:carebuzz/presentation/four_screen/four_screen.dart';
import 'package:carebuzz/presentation/resetpasssword_screen/resetpasssword_screen.dart';
import 'package:carebuzz/presentation/login_screen/login_screen.dart';
import 'package:carebuzz/presentation/signup_screen/signup_screen.dart';
import 'package:carebuzz/presentation/framecontinue_screen/framecontinue_screen.dart';
import 'package:carebuzz/presentation/notifications_screen/notifications_screen.dart';
import 'package:carebuzz/presentation/calendar_screen/calendar_screen.dart';
import 'package:carebuzz/presentation/calendar_two_screen/calendar_two_screen.dart';
import 'package:carebuzz/presentation/calendar_three_screen/calendar_three_screen.dart';
import 'package:carebuzz/presentation/calendar_four_screen/calendar_four_screen.dart';
import 'package:carebuzz/presentation/searchbar_one_screen/searchbar_one_screen.dart';
import 'package:carebuzz/presentation/profile_zero_screen/profile_zero_screen.dart';
import 'package:carebuzz/presentation/profileone_screen/profileone_screen.dart';
import 'package:carebuzz/presentation/profileoneone_screen/profileoneone_screen.dart';
import 'package:carebuzz/presentation/profileonetwo_screen/profileonetwo_screen.dart';
import 'package:carebuzz/presentation/profiletwo_screen/profiletwo_screen.dart';
import 'package:carebuzz/presentation/questionsonefour_screen/questionsonefour_screen.dart';
import 'package:carebuzz/presentation/questionsonethree_screen/questionsonethree_screen.dart';
import 'package:carebuzz/presentation/questionstwoone_screen/questionstwoone_screen.dart';
import 'package:carebuzz/presentation/questionsonetwo_screen/questionsonetwo_screen.dart';
import 'package:carebuzz/presentation/questionsonesix_screen/questionsonesix_screen.dart';
import 'package:carebuzz/presentation/questionstwo_screen/questionstwo_screen.dart';
import 'package:carebuzz/presentation/questionsone_screen/questionsone_screen.dart';
import 'package:carebuzz/presentation/questionsoneseven_screen/questionsoneseven_screen.dart';
import 'package:carebuzz/presentation/questionstwotwo_screen/questionstwotwo_screen.dart';
import 'package:carebuzz/presentation/questionsoneone_screen/questionsoneone_screen.dart';
import 'package:carebuzz/presentation/questionsonefive_screen/questionsonefive_screen.dart';
import 'package:carebuzz/presentation/questionstwothree_screen/questionstwothree_screen.dart';
import 'package:carebuzz/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashscreenScreen = '/splashscreen_screen';

  static const String oneScreen = '/one_screen';

  static const String twoScreen = '/two_screen';

  static const String threeScreen = '/three_screen';

  static const String fourScreen = '/four_screen';

  static const String resetpassswordScreen = '/resetpasssword_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String framePage = '/frame_page';

  static const String framecontinueScreen = '/framecontinue_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String calendarScreen = '/calendar_screen';

  static const String calendarTwoScreen = '/calendar_two_screen';

  static const String calendarThreeScreen = '/calendar_three_screen';

  static const String calendarFourScreen = '/calendar_four_screen';

  static const String searchbarOneScreen = '/searchbar_one_screen';

  static const String profileZeroScreen = '/profile_zero_screen';

  static const String profileoneScreen = '/profileone_screen';

  static const String profileoneoneScreen = '/profileoneone_screen';

  static const String profileonetwoScreen = '/profileonetwo_screen';

  static const String profiletwoScreen = '/profiletwo_screen';

  static const String questionsonefourScreen = '/questionsonefour_screen';

  static const String questionsonethreeScreen = '/questionsonethree_screen';

  static const String questionstwooneScreen = '/questionstwoone_screen';

  static const String questionsonetwoScreen = '/questionsonetwo_screen';

  static const String questionsonesixScreen = '/questionsonesix_screen';

  static const String questionstwoScreen = '/questionstwo_screen';

  static const String questionsoneScreen = '/questionsone_screen';

  static const String questionsonesevenScreen = '/questionsoneseven_screen';

  static const String questionstwotwoScreen = '/questionstwotwo_screen';

  static const String questionsoneoneScreen = '/questionsoneone_screen';

  static const String questionsonefiveScreen = '/questionsonefive_screen';

  static const String questionstwothreeScreen = '/questionstwothree_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashscreenScreen: (context) => SplashscreenScreen(),
    oneScreen: (context) => OneScreen(),
    twoScreen: (context) => TwoScreen(),
    threeScreen: (context) => ThreeScreen(),
    fourScreen: (context) => FourScreen(),
    resetpassswordScreen: (context) => ResetpassswordScreen(),
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignupScreen(),
    framecontinueScreen: (context) => FramecontinueScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    calendarScreen: (context) => CalendarScreen(),
    calendarTwoScreen: (context) => CalendarTwoScreen(),
    calendarThreeScreen: (context) => CalendarThreeScreen(),
    calendarFourScreen: (context) => CalendarFourScreen(),
    searchbarOneScreen: (context) => SearchbarOneScreen(),
    profileZeroScreen: (context) => ProfileZeroScreen(),
    profileoneScreen: (context) => ProfileoneScreen(),
    profileoneoneScreen: (context) => ProfileoneoneScreen(),
    profileonetwoScreen: (context) => ProfileonetwoScreen(),
    profiletwoScreen: (context) => ProfiletwoScreen(),
    questionsonefourScreen: (context) => QuestionsonefourScreen(),
    questionsonethreeScreen: (context) => QuestionsonethreeScreen(),
    questionstwooneScreen: (context) => QuestionstwooneScreen(),
    questionsonetwoScreen: (context) => QuestionsonetwoScreen(),
    questionsonesixScreen: (context) => QuestionsonesixScreen(),
    questionstwoScreen: (context) => QuestionstwoScreen(),
    questionsoneScreen: (context) => QuestionsoneScreen(),
    questionsonesevenScreen: (context) => QuestionsonesevenScreen(),
    questionstwotwoScreen: (context) => QuestionstwotwoScreen(),
    questionsoneoneScreen: (context) => QuestionsoneoneScreen(),
    questionsonefiveScreen: (context) => QuestionsonefiveScreen(),
    questionstwothreeScreen: (context) => QuestionstwothreeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
