import 'package:ewallet/features/user/presentation/profile/verification/verification_page.dart';
import 'package:flutter/material.dart';
import 'package:ewallet/core/widgets/success_widget.dart';
import 'package:ewallet/features/auth/presentation/signin/sign_in_page.dart';
import 'package:ewallet/features/auth/presentation/signup/sign_up_page.dart';
import 'package:ewallet/features/home/home_page.dart';
import 'package:ewallet/features/pin/pin_page.dart';
import 'package:ewallet/features/product/presentation/pages/dataplans/select_package_page.dart';
import 'package:ewallet/features/product/presentation/pages/dataplans/select_provider_page.dart';
import 'package:ewallet/features/product/product.dart';
import 'package:ewallet/features/splash_page.dart';
import 'package:ewallet/features/topup/domain/entities/entities.dart';
import 'package:ewallet/features/topup/presentation/pages/amount_page.dart';
import 'package:ewallet/features/topup/presentation/pages/topup_page.dart';
import 'package:ewallet/features/transfer/domain/usecases/usecases.dart';
import 'package:ewallet/features/transfer/presentation/pages/component/amount_page.dart';
import 'package:ewallet/features/transfer/presentation/pages/transfer_page.dart';
import 'package:ewallet/features/user/domain/domain.dart';
import 'package:ewallet/features/user/presentation/profile/profile.dart';
import 'package:ewallet/utils/helper/helper.dart';

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

      case '/verification':
        return _materialPageRoute(VerificationPage(
          userEntity: settings.arguments as UserEntity,
        ));
      case '/pin':
        return _materialPageRoute(const PinPage());
      case '/topup':
        return _materialPageRoute(const TopUpPage());
      case '/amount-topup':
        return _materialPageRoute(
          AmountTopupPage(
            paymentDataTopupEntity:
                settings.arguments as PaymentDataTopupEntity,
          ),
        );
      case '/amount-transfer':
        return _materialPageRoute(
          AmountTransferPage(
            transferParams: settings.arguments as TransferParams,
          ),
        );
      case '/transfer':
        return _materialPageRoute(const TransferPage());
      case '/success-widget':
        return _materialPageRoute(SuccessPage(
          successWidgetModelHelper:
              settings.arguments as SuccessWidgetModelHelper,
        ));
      case '/select-provider':
        return _materialPageRoute(const SelectProviderPage());
      case '/select-package':
        return _materialPageRoute(SelectPackageDataPage(
          dataOperatorCardEntity: settings.arguments as DataOperatorCardEntity,
        ));
      default:
        return _materialPageRoute(const HomePage());
    }
  }

  static Route<dynamic> _materialPageRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
