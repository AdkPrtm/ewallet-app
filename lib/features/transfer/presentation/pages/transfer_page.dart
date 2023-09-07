import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/core/widgets/buttons.dart';
import 'package:template_clean_architecture/core/widgets/recent_user_widget.dart';
import 'package:template_clean_architecture/core/widgets/searching_result_widget.dart';
import 'package:template_clean_architecture/features/transfer/domain/usecases/usecases.dart';
import 'package:template_clean_architecture/features/transfer/presentation/bloc/transfer_bloc.dart';
import 'package:template_clean_architecture/features/user/presentation/bloc/user_bloc.dart';
import 'package:template_clean_architecture/injection_container.dart';
import 'package:template_clean_architecture/utils/extensions/extensions.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  final searchCon = TextEditingController(text: '');
  String? usernameSendTo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Transfer'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Search',
                  style: AppFont().blackTextStyle.copyWith(
                        fontSize: 16.sp,
                        fontWeight: AppFont().semibold,
                      ),
                ),
                14.0.height,
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    contentPadding: const EdgeInsets.all(12),
                    hintText: 'by username',
                  ),
                  controller: searchCon,
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      context
                          .read<UserBloc>()
                          .add(GetDataByUsername(username: value));
                      setState(() {});
                    }
                  },
                ),
              ],
            ),
            40.0.height,
            searchCon.text.isEmpty ? recentUser() : searchingUser(),
            80.0.height,
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(
          left: 24.w,
          right: 24.w,
          bottom: 30.h,
        ),
        child: CustomFilledButton(
          title: 'Continue',
          onTap: usernameSendTo == null
              ? () {}
              : () => Navigator.pushNamed(
                    context,
                    '/amount-transfer',
                    arguments: TransferParams(
                      sendToUsername: usernameSendTo,
                    ),
                  ),
          changeColor: usernameSendTo == null,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Column searchingUser() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Result',
          style: AppFont().blackTextStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: AppFont().semibold,
              ),
        ),
        14.0.height,
        BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is ListDataByUsername) {
              if (state.listData!.isEmpty) {
                return const Center(
                  child: Text('username not found'),
                );
              } else {
                return Wrap(
                  spacing: 17.w,
                  runSpacing: 17.h,
                  children: state.listData!.map((data) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (usernameSendTo == data.username) {
                            usernameSendTo = null;
                          } else {
                            usernameSendTo = data.username;
                          }
                        });
                      },
                      child: SearchingResultWidget(
                        userBySearchingEntity: data,
                        isSelected: data.username == usernameSendTo,
                      ),
                    );
                  }).toList(),
                );
              }
            }
            return Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Center(
                child: CircularProgressIndicator(
                  color: purpleColor,
                  strokeWidth: 5.h,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  BlocProvider<TransferBloc> recentUser() {
    return BlocProvider(
      create: (_) => sl<TransferBloc>()
        ..add(
          const RequestTransferHistoryEvent(limit: '5'),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: AppFont().blackTextStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: AppFont().semibold,
                ),
          ),
          14.0.height,
          BlocBuilder<TransferBloc, TransferState>(
            builder: (context, state) {
              if (state is SuccessTransferHistory) {
                return Column(
                  children: state.dataTransferHistory!.map((data) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (usernameSendTo == data.username) {
                            usernameSendTo = null;
                          } else {
                            usernameSendTo = data.username;
                          }
                        });
                      },
                      child: RecentUserWidget(
                        dataTransferHistory: data,
                        isSelected: data.username == usernameSendTo,
                      ),
                    );
                  }).toList(),
                );
              }
              return Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Center(
                  child: CircularProgressIndicator(
                    color: purpleColor,
                    strokeWidth: 5.h,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
