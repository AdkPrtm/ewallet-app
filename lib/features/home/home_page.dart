import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/features/home/component/custom_latest_transaction_component.dart';
import 'package:template_clean_architecture/features/home/component/custom_level_card_component.dart';
import 'package:template_clean_architecture/features/home/component/custom_send_again_component.dart';
import 'package:template_clean_architecture/features/home/component/custom_tips_component.dart';
import 'package:template_clean_architecture/features/home/component/custom_transaction_option_component.dart';
import 'package:template_clean_architecture/features/home/component/custom_wallet_component.dart';
import 'package:template_clean_architecture/features/home/component/custome_wellcome_profile_component.dart';
import 'package:template_clean_architecture/features/home/component/shimmer_profile_and_card_component.dart';
import 'package:template_clean_architecture/features/user/presentation/bloc/user_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(GetCurrentUserEvent());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(24.w, 50.h, 24.w, 40.h),
        children: [
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              print(state);
              if (state is UserLoaded) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                        context,
                        '/profile',
                        arguments: state.userEntity,
                      ),
                      child: CustomWellcomeProfileComponent(
                        name: state.userEntity.name!,
                        urlPicture: state.userEntity.profilePicture!,
                        verified: state.userEntity.verified!,
                      ),
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
              if (state is UserLoading) {
                return const ShimmerProfileAndCardComponent();
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
