import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/core/widgets/buttons.dart';
import 'package:template_clean_architecture/core/widgets/select_widget_widget.dart';
import 'package:template_clean_architecture/features/product/presentation/pages/dataplans/component/buydata_component.dart';
import 'package:template_clean_architecture/features/product/product.dart';
import 'package:template_clean_architecture/utils/extensions/extensions.dart';

class SelectProviderPage extends StatefulWidget {
  const SelectProviderPage({super.key});

  @override
  State<SelectProviderPage> createState() => _SelectProviderPageState();
}

class _SelectProviderPageState extends State<SelectProviderPage> {
  DataOperatorCardEntity? dataOperatorCardEntity;
  @override
  void initState() {
    super.initState();
    context.read<ProductBloc>().add(const GetDataPlansEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beli Data'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 20.h,
        ),
        child: Column(
          children: [
            const WalletBuyDataComponent(),
            40.0.height,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select Provider',
                  style: AppFont().blackTextStyle.copyWith(
                        fontSize: 16.sp,
                        fontWeight: AppFont().semibold,
                      ),
                ),
                14.0.height,
                BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                    if (state is ProductLoaded) {
                      return Column(
                        children: state.dataOperator!
                            .map((data) => GestureDetector(
                                  onTap: () {
                                    if (dataOperatorCardEntity == data) {
                                      dataOperatorCardEntity = null;
                                    } else {
                                      dataOperatorCardEntity = data;
                                    }
                                    setState(() {});
                                  },
                                  child: SelectProviderWidget(
                                    dataOperatorCardEntity: data,
                                    isSelected: dataOperatorCardEntity == data
                                        ? true
                                        : false,
                                  ),
                                ))
                            .toList(),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        color: purpleColor,
                        strokeWidth: 5.h,
                      ),
                    );
                  },
                ),
              ],
            ),
            const Spacer(),
            dataOperatorCardEntity == null
                ? CustomFilledButton(
                    title: 'Continue',
                    onTap: () {},
                    changeColor: true,
                  )
                : CustomFilledButton(
                    title: 'Continue',
                    onTap: () => Navigator.pushNamed(
                      context,
                      '/select-package',
                      arguments: dataOperatorCardEntity,
                    ),
                  ),
            37.0.height,
          ],
        ),
      ),
    );
  }
}
