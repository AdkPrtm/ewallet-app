import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/core/widgets/buttons.dart';
import 'package:ewallet/core/widgets/select_widget_widget.dart';
import 'package:ewallet/features/product/presentation/pages/dataplans/component/buydata_component.dart';
import 'package:ewallet/features/product/product.dart';
import 'package:ewallet/utils/extensions/extensions.dart';

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
    context
        .read<ProductBloc>()
        .add(GetDataPlansEvent(query: GetDataPlansQuery(page: 1, limit: 10)));
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
                      List<DataOperatorCardEntity>? dataFilter = state.dataOperator?.where((data) => data.status == 'ACTIVE').toList();
                      return Column(
                        children: dataFilter!
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
