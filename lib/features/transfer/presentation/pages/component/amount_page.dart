import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/core/widgets/buttons.dart';
import 'package:ewallet/core/widgets/type_number_widget.dart';
import 'package:ewallet/features/topup/presentation/pages/component/amount_component.dart';
import 'package:ewallet/features/transfer/domain/usecases/usecases.dart';
import 'package:ewallet/features/transfer/presentation/bloc/transfer_bloc.dart';
import 'package:ewallet/utils/extensions/extensions.dart';
import 'package:ewallet/utils/helper/helper.dart';

class AmountTransferPage extends StatefulWidget {
  const AmountTransferPage({
    super.key,
    required this.transferParams,
  });

  final TransferParams transferParams;

  @override
  State<AmountTransferPage> createState() => _AmountTransferPageState();
}

class _AmountTransferPageState extends State<AmountTransferPage> {
  final TextEditingController amountController =
      TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();

    amountController.addListener(() {
      final text = amountController.text;
      amountController.value = amountController.value.copyWith(
        text: NumberFormat.currency(locale: 'id', decimalDigits: 0, symbol: '')
            .format(
          int.parse(text.replaceAll('.', '')),
        ),
      );
    });
  }

  addAmount(String number) {
    if (amountController.text.length < 9) {
      setState(() {
        amountController.text = amountController.text + number;
      });
    }
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        if (amountController.text.length < 2) {
          amountController.text = '0';
        } else {
          amountController.text = amountController.text
              .substring(0, amountController.text.length - 1);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TransferBloc, TransferState>(
      listener: (context, state) async {
        if (state is TransferSuccess) {
          if (context.mounted) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/success-widget',
              (route) => false,
              arguments: SuccessWidgetModelHelper(
                navigator: '/home',
                title: 'Berhasil Transfer',
                subtitle: 'Use the money wisely and\ngrow your finance',
                textButton: 'Back to Home',
              ),
            );
          }
        }
        if (state is FailedTransfer) {
          if (context.mounted) {
            showCustomSnackbar(context, state.message!);
          }
        }
      },
      builder: (context, state) {
        if (state is TransferLoading) {
          return Scaffold(
            backgroundColor: lightBackground,
            body: Center(
              child: CircularProgressIndicator(
                color: purpleColor,
              ),
            ),
          );
        }
        return Scaffold(
          backgroundColor: darkBackground,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 57.w),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total Amount',
                    style: AppFont().whiteTextStyle.copyWith(
                          fontSize: 20.sp,
                          fontWeight: AppFont().semibold,
                        ),
                  ),
                  67.0.height,
                  FieldAmountComponent(amountController: amountController),
                  66.0.height,
                  Wrap(
                    spacing: 40.h,
                    runSpacing: 40.h,
                    children: [
                      TypeNumberWidget(
                        title: '1',
                        onTap: () {
                          addAmount('1');
                        },
                      ),
                      TypeNumberWidget(
                        title: '2',
                        onTap: () {
                          addAmount('2');
                        },
                      ),
                      TypeNumberWidget(
                        title: '3',
                        onTap: () {
                          addAmount('3');
                        },
                      ),
                      TypeNumberWidget(
                        title: '4',
                        onTap: () {
                          addAmount('4');
                        },
                      ),
                      TypeNumberWidget(
                        title: '5',
                        onTap: () {
                          addAmount('5');
                        },
                      ),
                      TypeNumberWidget(
                        title: '6',
                        onTap: () {
                          addAmount('6');
                        },
                      ),
                      TypeNumberWidget(
                        title: '7',
                        onTap: () {
                          addAmount('7');
                        },
                      ),
                      TypeNumberWidget(
                        title: '8',
                        onTap: () {
                          addAmount('8');
                        },
                      ),
                      TypeNumberWidget(
                        title: '9',
                        onTap: () {
                          addAmount('9');
                        },
                      ),
                      SizedBox(
                        height: 60.h,
                        width: 60.h,
                      ),
                      TypeNumberWidget(
                        title: '0',
                        onTap: () {
                          addAmount('0');
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          deleteAmount();
                        },
                        child: Container(
                          width: 60.h,
                          height: 60.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: numberBackgroundColor,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back,
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  50.0.height,
                  CustomFilledButton(
                    title: 'Checkout Now',
                    onTap: () async {
                      final pin = await Navigator.pushNamed(context, '/pin');
                      if (pin != null) {
                        if (context.mounted) {
                          context.read<TransferBloc>().add(
                                RequestTransferEvent(
                                  transferParams:
                                      widget.transferParams.copyWith(
                                    sendToUsername:
                                        widget.transferParams.sendToUsername,
                                    pin: pin.toString(),
                                    amount: int.parse(
                                      amountController.text.replaceAll('.', ''),
                                    ),
                                  ),
                                ),
                              );
                        }
                      }
                    },
                  ),
                  25.0.height,
                  CustomeTextButton(
                    title: 'Terms & Conditions',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
