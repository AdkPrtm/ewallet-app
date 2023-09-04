import 'package:flutter/material.dart';
import 'package:template_clean_architecture/core/widgets/success_widget.dart';
import 'package:template_clean_architecture/feature/auth/presentation/signin/sign_in_page.dart';
import 'package:template_clean_architecture/feature/auth/presentation/signup/sign_up_page.dart';
import 'package:template_clean_architecture/feature/home/home_page.dart';
import 'package:template_clean_architecture/feature/pin/pin_page.dart';
import 'package:template_clean_architecture/feature/splash_page.dart';
import 'package:template_clean_architecture/feature/user/domain/domain.dart';
import 'package:template_clean_architecture/feature/user/presentation/profile/profile.dart';
import 'package:template_clean_architecture/utils/helper/helper.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialPageRoute(const SplashPage());
      // case '/onboarding':
      //   return _materialPageRoute(const OnboardingPage());
      case '/signin':
        return _materialPageRoute(const SignInPage());
      case '/signup':
        return _materialPageRoute(const SignUpPage());
      // case '/signup-success':
      //   return _materialPageRoute(const SignUpSuccessPage());
      case '/home':
        return _materialPageRoute(const HomePage());
      case '/profile':
        return _materialPageRoute(ProfilePage(
          userEntity: settings.arguments as UserEntity,
        ));
      case '/profile-edit':
        return _materialPageRoute(ProfileEditPage(
          userEntity: settings.arguments as UserEntity,
        ));
      case '/profile-pin':
        return _materialPageRoute(const ProfilePinPage());
      case '/pin':
        return _materialPageRoute(PinPage(
          userEntity: settings.arguments as UserEntity,
        ));
      // case '/topup':
      //   return _materialPageRoute(const TopUpPage());
      // case '/amount':
      //   return _materialPageRoute(const AmountTopupPage());
      // case '/transfer':
      //   return _materialPageRoute(const TransferPage());
      case '/success-widget':
        return _materialPageRoute(SuccessPage(
          successWidgetModelHelper:
              settings.arguments as SuccessWidgetModelHelper,
        ));
      // case '/select-provider':
      //   return _materialPageRoute(const SelectProviderPage());
      // case '/select-package':
      //   return _materialPageRoute(const SelectPackageDataPage());
      default:
        return _materialPageRoute(const HomePage());
    }
  }

  static Route<dynamic> _materialPageRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
