import 'dart:async';

import 'package:ewallet/features/transfer/domain/entities/user_byusername_entities.dart';
import 'package:ewallet/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/core/widgets/buttons.dart';
import 'package:ewallet/core/widgets/recent_user_widget.dart';
import 'package:ewallet/core/widgets/searching_result_widget.dart';
import 'package:ewallet/features/transfer/domain/usecases/usecases.dart';
import 'package:ewallet/features/transfer/presentation/bloc/transfer_bloc.dart';
import 'package:ewallet/utils/extensions/extensions.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  final searchCon = TextEditingController(text: '');
  late GetUserByUsernameUsecase _getUserByUsernameUsecase;
  String? usernameSendTo;
  Timer? _debounce;
  List<UserBySearchingEntity> resUserResult = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _getUserByUsernameUsecase = GetUserByUsernameUsecase(sl());
  }

  _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();

    if (query.length >= 3) {
      _debounce = Timer(
        const Duration(milliseconds: 1000),
        () async {
          setState(() {
            isLoading = true;
          });
          final result = await _getUserByUsernameUsecase.call(params: query);
          result.fold(
            (error) => setState(() {
              resUserResult.clear();
              isLoading = false;
            }),
            (success) => setState(() {
              resUserResult = success;
              isLoading = false;
            }),
          );
        },
      );
    } else {
      setState(() {
        resUserResult.clear();
      });
    }
  }

  @override
  void dispose() {
    searchCon.dispose();
    _debounce?.cancel();
    super.dispose();
  }

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
                  onChanged: (value) => _onSearchChanged(value),
                ),
              ],
            ),
            40.0.height,
            searchCon.text.length <= 2
                ? recentUser()
                : PopScope(
                    onPopInvoked: (_) => _onSearchChanged(''),
                    canPop: false,
                    child: searchingUser(),
                  ),
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
                      0,
                      '',
                      usernameSendTo,
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
        isLoading
            ? Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Center(
                  child: CircularProgressIndicator(
                    color: purpleColor,
                    strokeWidth: 5.h,
                  ),
                ),
              )
            : resUserResult.isEmpty
                ? const Center(
                    child: Text('username not found'),
                  )
                : Wrap(
                    spacing: 17.w,
                    runSpacing: 17.h,
                    children: resUserResult.map((data) {
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
                  )
        // BlocBuilder<TransferBloc, TransferState>(
        //   builder: (context, state) {
        //     if (state is ResultTransactionState) {
        //       if (state.listUser == null) {
        //         return const Center(
        //           child: Text('username not found'),
        //         );
        //       } else {
        //         return Wrap(
        //           spacing: 17.w,
        //           runSpacing: 17.h,
        //           children: state.listUser!.map((data) {
        //             return GestureDetector(
        //               onTap: () {
        //                 setState(() {
        //                   if (usernameSendTo == data.username) {
        //                     usernameSendTo = null;
        //                   } else {
        //                     usernameSendTo = data.username;
        //                   }
        //                 });
        //               },
        //               child: SearchingResultWidget(
        //                 userBySearchingEntity: data,
        //                 isSelected: data.username == usernameSendTo,
        //               ),
        //             );
        //           }).toList(),
        //         );
        //       }
        //     }
        //     return Padding(
        //       padding: EdgeInsets.only(top: 20.h),
        //       child: Center(
        //         child: CircularProgressIndicator(
        //           color: purpleColor,
        //           strokeWidth: 5.h,
        //         ),
        //       ),
        //     );
        //   },
        // ),
      ],
    );
  }

  Widget recentUser() {
    return Column(
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
    );
  }
}
