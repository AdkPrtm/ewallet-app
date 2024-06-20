import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/core/widgets/buttons.dart';
import 'package:ewallet/core/widgets/select_option_widget.dart';
import 'package:ewallet/features/topup/domain/entities/entities.dart';
import 'package:ewallet/features/topup/presentation/bloc/topup_bloc.dart';
import 'package:ewallet/features/topup/presentation/pages/component/topup_component.dart';
import 'package:ewallet/injection_container.dart';
import 'package:ewallet/utils/extensions/extensions.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({super.key});

  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  PaymentDataTopupEntity? paymentDataTopupEntity;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Up'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WalletTopupComponent(),
              40.0.height,
              Text(
                'Select Bank',
                style: AppFont().blackTextStyle.copyWith(
                      fontSize: 16.sp,
                      fontWeight: AppFont().semibold,
                    ),
              ),
              14.0.height,
              BlocProvider(
                create: (context) => sl<TopupBloc>()
                  ..add(
                    GetPaymentMethodTopupEvent(),
                  ),
                child: BlocBuilder<TopupBloc, TopupState>(
                  builder: (context, state) {
                    if (state is PaymentMethodLoaded) {
                      List<PaymentDataTopupEntity> activePayments = state
                          .paymentDataTopup
                          .where((res) => res.status == 'ACTIVE')
                          .toList();
                      return Column(
                        children: activePayments.map((paymentmethod) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                paymentDataTopupEntity = paymentmethod;
                              });
                            },
                            child: SelectOptionWidget(
                              paymentDataTopupEntity: paymentmethod,
                              isSelected: paymentDataTopupEntity?.name ==
                                  paymentmethod.name,
                            ),
                          );
                        }).toList(),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
              80.0.height,
            ],
          ),
        ),
      ),
      floatingActionButton: paymentDataTopupEntity == null
          ? Padding(
              padding: EdgeInsets.only(
                bottom: 30.h,
                left: 24.w,
                right: 24.w,
              ),
              child: CustomFilledButton(
                title: 'Continue',
                onTap: () {},
                changeColor: true,
              ),
            )
          : Padding(
              padding: EdgeInsets.only(
                bottom: 30.h,
                left: 24.w,
                right: 24.w,
              ),
              child: CustomFilledButton(
                title: 'Continue',
                onTap: paymentDataTopupEntity == null
                    ? () {}
                    : () {
                        if (paymentDataTopupEntity != null) {
                          Navigator.pushNamed(
                            context,
                            '/amount-topup',
                            arguments: paymentDataTopupEntity,
                          );
                        }
                      },
              ),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
