import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/core/widgets/type_number_widget.dart';
import 'package:ewallet/utils/extensions/extensions.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  TextEditingController pinController = TextEditingController(text: '');

  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }

    if (pinController.text.length == 6) {
      Navigator.pop(context, pinController.text);
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackground,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 57.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ewallet Pin',
                style: AppFont().whiteTextStyle.copyWith(
                      fontSize: 20.sp,
                      fontWeight: AppFont().semibold,
                    ),
              ),
              72.0.height,
              SizedBox(
                width: 225.w,
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  controller: pinController,
                  cursorColor: greyColor,
                  enabled: false,
                  style: AppFont().whiteTextStyle.copyWith(
                        fontSize: 36.sp,
                        fontWeight: AppFont().medium,
                        letterSpacing: 16,
                      ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
              66.0.height,
              Wrap(
                spacing: 40.h,
                runSpacing: 40.h,
                children: [
                  TypeNumberWidget(
                    title: '1',
                    onTap: () {
                      addPin('1');
                    },
                  ),
                  TypeNumberWidget(
                    title: '2',
                    onTap: () {
                      addPin('2');
                    },
                  ),
                  TypeNumberWidget(
                    title: '3',
                    onTap: () {
                      addPin('3');
                    },
                  ),
                  TypeNumberWidget(
                    title: '4',
                    onTap: () {
                      addPin('4');
                    },
                  ),
                  TypeNumberWidget(
                    title: '5',
                    onTap: () {
                      addPin('5');
                    },
                  ),
                  TypeNumberWidget(
                    title: '6',
                    onTap: () {
                      addPin('6');
                    },
                  ),
                  TypeNumberWidget(
                    title: '7',
                    onTap: () {
                      addPin('7');
                    },
                  ),
                  TypeNumberWidget(
                    title: '8',
                    onTap: () {
                      addPin('8');
                    },
                  ),
                  TypeNumberWidget(
                    title: '9',
                    onTap: () {
                      addPin('9');
                    },
                  ),
                  SizedBox(
                    height: 60.h,
                    width: 60.h,
                  ),
                  TypeNumberWidget(
                    title: '0',
                    onTap: () {
                      addPin('0');
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      deletePin();
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
