import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/core/widgets/buttons.dart';
import 'package:template_clean_architecture/core/widgets/select_package_widget.dart';
import 'package:template_clean_architecture/features/auth/auth.dart';
import 'package:template_clean_architecture/features/product/product.dart';
import 'package:template_clean_architecture/utils/extensions/extensions.dart';
import 'package:template_clean_architecture/utils/helper/helper.dart';

class SelectPackageDataPage extends StatefulWidget {
  const SelectPackageDataPage(
      {super.key, required this.dataOperatorCardEntity});

  final DataOperatorCardEntity dataOperatorCardEntity;

  @override
  State<SelectPackageDataPage> createState() => _SelectPackageDataPageState();
}

class _SelectPackageDataPageState extends State<SelectPackageDataPage> {
  DataPlansListEntity? dataPlansListEntity;
  final phoneNumber = TextEditingController(text: '');
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paket Data'),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 20.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone Number',
                    style: AppFont().blackTextStyle.copyWith(
                          fontSize: 16.sp,
                          fontWeight: AppFont().semibold,
                        ),
                  ),
                  14.0.height,
                  TextFormField(
                    controller: phoneNumber,
                    keyboardType: TextInputType.number,
                    maxLength: 13,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      contentPadding: const EdgeInsets.all(12),
                      hintText: '08xxx',
                      counterText: '',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Phone Number is required';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            40.0.height,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select Package',
                  style: AppFont().blackTextStyle.copyWith(
                        fontSize: 16.sp,
                        fontWeight: AppFont().semibold,
                      ),
                ),
                14.0.height,
                Wrap(
                  spacing: 17.h,
                  runSpacing: 17.w,
                  children: widget.dataOperatorCardEntity.dataPlans!
                      .map((data) => GestureDetector(
                            onTap: () {
                              if (dataPlansListEntity == data) {
                                dataPlansListEntity = null;
                              } else {
                                dataPlansListEntity = data;
                              }
                              setState(() {});
                            },
                            child: SelectPackageWidget(
                              dataPlansListEntity: data,
                              isSelected: dataPlansListEntity == data,
                            ),
                          ))
                      .toList(),
                )
              ],
            ),
            const Spacer(),
            dataPlansListEntity == null
                ? CustomFilledButton(
                    title: 'Continue',
                    onTap: () {},
                    changeColor: true,
                  )
                : BlocConsumer<ProductBloc, ProductState>(
                    listener: (context, state) {
                      if (state is ProductSuccess) {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          '/success-widget',
                          (route) => false,
                          arguments: SuccessWidgetModelHelper(
                            navigator: '/home',
                            title: 'Paket Data\nBerhasil Terbeli',
                            subtitle:
                                'Use the money wisely and\ngrow your finance',
                            textButton: 'Back to Home',
                          ),
                        );
                      }

                      if (state is ProductFailed) {
                        showCustomSnackbar(context, state.message!);
                      }
                    },
                    builder: (context, state) {
                      if (state is ProductLoading) {
                        return CustomFilledButton(
                          title: 'Continue',
                          onTap: () {},
                          disable: true,
                        );
                      }
                      return CustomFilledButton(
                        title: 'Continue',
                        onTap: () async {
                          if (formKey.currentState!.validate()) {
                            final authstate = context.read<AuthBloc>().state;
                            if (authstate is AuthDone) {
                              if (await Navigator.pushNamed(context, '/pin',
                                      arguments: authstate.userEntity) ==
                                  true) {
                                if (context.mounted) {
                                  context.read<ProductBloc>().add(
                                        BuyDataPlansEvent(
                                          buyDataPlansParams:
                                              BuyDataPlansParams(
                                            idPlans: dataPlansListEntity!.id,
                                            phoneNumber: phoneNumber.text,
                                            pin: authstate.userEntity.pin,
                                          ),
                                        ),
                                      );
                                }
                              }
                            }
                          }
                        },
                      );
                    },
                  ),
            37.0.height,
          ],
        ),
      ),
    );
  }
}
