
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:template_clean_architecture/feature/home/component/custom_latest_transaction_component.dart';
import 'package:template_clean_architecture/feature/home/component/custom_level_card_component.dart';
import 'package:template_clean_architecture/feature/home/component/custom_send_again_component.dart';
import 'package:template_clean_architecture/feature/home/component/custom_tips_component.dart';
import 'package:template_clean_architecture/feature/home/component/custom_transaction_option_component.dart';
import 'package:template_clean_architecture/feature/home/component/custom_wallet_component.dart';
import 'package:template_clean_architecture/feature/home/component/custome_wellcome_profile_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(24.w, 50.h, 24.w, 40.h),
        children: [
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is AuthDone) {
                return Column(
                  children: [
                    CustomWellcomeProfileComponent(
                      name: state.userEntity.name!,
                      urlPicture: state.userEntity.profilePicture!,
                      verified: state.userEntity.verified!,
                    ),
                    SizedBox(height: 32.h),
                    CustomWalletComponent(
                      nama: state.userEntity.name!,
                      card: state.userEntity.cardNumber!,
                      balance: state.userEntity.balance!,
                    ),
                  ],
                );
              }
              return Container();
            },
          ),
          SizedBox(height: 20.h),
          const CustomLevelCardComponent(),
          SizedBox(height: 30.h),
          const TransactionOptionComponent(),
          SizedBox(height: 30.h),
          const CustomLatestTransactionComponent(),
          SizedBox(height: 30.h),
          const CustomSendAgainComponent(),
          SizedBox(height: 30.h),
          const CustomTipsComponent()
        ],
      ),
    );
  }
}
