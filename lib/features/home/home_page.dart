import 'package:ewallet/features/transaction/domain/usecases/get_transactions_history_usecase.dart';
import 'package:ewallet/features/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:ewallet/features/transfer/domain/usecases/transfer_history_usecase.dart';
import 'package:ewallet/features/transfer/presentation/bloc/transfer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/features/home/component/custom_latest_transaction_component.dart';
import 'package:ewallet/features/home/component/custom_level_card_component.dart';
import 'package:ewallet/features/home/component/custom_send_again_component.dart';
import 'package:ewallet/features/home/component/custom_tips_component.dart';
import 'package:ewallet/features/home/component/custom_transaction_option_component.dart';
import 'package:ewallet/features/home/component/custom_wallet_component.dart';
import 'package:ewallet/features/home/component/custome_wellcome_profile_component.dart';
import 'package:ewallet/core/widgets/shimmer/shimmer_profile_and_card_component.dart';
import 'package:ewallet/features/user/presentation/bloc/user_bloc.dart';
import 'package:shimmer/shimmer.dart';

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
    context.read<TransferBloc>().add(RequestTransferHistoryEvent(
        query: GetTransferHistoryQuery(limit: 5, page: 1)));
    context.read<TransactionBloc>().add(GetTransactionHistoryEvent(
          query: GetTransactionHistoryQuery(limit: 6, page: 1),
        ));
  }

  Future<void> _handleRefresh() async {
    setState(() {
      context.read<UserBloc>().add(GetCurrentUserEvent());
      context.read<TransferBloc>().add(RequestTransferHistoryEvent(
          query: GetTransferHistoryQuery(limit: 5, page: 1)));
      context.read<TransactionBloc>().add(GetTransactionHistoryEvent(
            query: GetTransactionHistoryQuery(limit: 6, page: 1),
          ));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _handleRefresh,
        child: ListView(
          padding: EdgeInsets.fromLTRB(24.w, 50.h, 24.w, 40.h),
          children: [
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
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
                          name:
                              '${state.userEntity.firstName} ${state.userEntity.lastName}',
                          urlPicture: state.userEntity.profilePicture!,
                          verified: state.userEntity.verified!,
                        ),
                      ),
                      SizedBox(height: 32.h),
                      CustomWalletComponent(
                        nama:
                            '${state.userEntity.firstName} ${state.userEntity.lastName}',
                        card: state.userEntity.cardNumber!,
                        balance: state.userEntity.balance!,
                      ),
                    ],
                  );
                }
                return Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  child: const ShimmerProfileAndCardComponent(),
                );
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
      ),
    );
  }
}
