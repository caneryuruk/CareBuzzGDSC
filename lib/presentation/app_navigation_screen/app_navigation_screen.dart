import 'package:carebuzz/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "splashScreen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashscreenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "one",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.oneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "two",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.twoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "three",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.threeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "four",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.fourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "resetpasssword",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.resetpassswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "signUp",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "frameContinue",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.framecontinueScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Calendar",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.calendarScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Calendar_Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.calendarTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Calendar_Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.calendarThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Calendar_Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.calendarFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SearchBar_One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchbarOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "profile_zero",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileZeroScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ProfileOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ProfileOneOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileoneoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ProfileOneTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileonetwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ProfileTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profiletwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QuestionsOneFour",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionsonefourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QuestionsOneThree",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionsonethreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QuestionsTwoOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionstwooneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QuestionsOneTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionsonetwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QuestionsOneSix",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionsonesixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QuestionsTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionstwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QuestionsOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionsoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QuestionsOneSeven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionsonesevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QuestionsTwoTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionstwotwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QuestionsOneOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionsoneoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QuestionsOneFive",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionsonefiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QuestionsTwoThree",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionstwothreeScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
