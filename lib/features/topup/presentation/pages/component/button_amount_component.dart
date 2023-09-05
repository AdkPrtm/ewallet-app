import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_clean_architecture/core/widgets/buttons.dart';
import 'package:template_clean_architecture/features/topup/domain/usecases/topup_usecase.dart';
import 'package:template_clean_architecture/features/topup/presentation/bloc/topup_bloc.dart';
import 'package:template_clean_architecture/features/user/domain/domain.dart';
import 'package:template_clean_architecture/injection_container.dart';
import 'package:template_clean_architecture/utils/helper/helper.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonAmountComponent extends StatelessWidget {
  const ButtonAmountComponent({
    super.key,
    this.successWidgetModelHelper,
    this.userEntity,
    this.amount,
    this.paymentMethod,
    this.isDisable = false,
  });
  final UserEntity? userEntity;
  final SuccessWidgetModelHelper? successWidgetModelHelper;
  final String? amount;
  final String? paymentMethod;
  final bool? isDisable;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopupBloc, TopupState>(
      builder: (context, state) {
        if (state is TopUpLoaded) {
          return CustomFilledButton(
            disable: isDisable!,
            title: 'Checkout Now',
            onTap: () async {
              if (await Navigator.pushNamed(
                    context,
                    '/pin',
                    arguments: userEntity,
                  ) ==
                  true) {
                if (successWidgetModelHelper!.title ==
                    'Top Up\nWallet Berhasil') {
                  await launchUrl(
                    Uri.parse(state.topUpEntity!.redirectUrl!),
                  );
                }
                if (context.mounted) {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/success-widget',
                    (route) => false,
                    arguments: successWidgetModelHelper,
                  );
                }
              }
            },
          );
        }
        if (state is TopupFailed) {
          print(state.message);
        }
        if (state is TopUpLoading) {
          return CircularProgressIndicator();
        }
        return CustomFilledButton(
          title: 'Checkout Now',
          onTap: () {},
          disable: isDisable!,
        );
      },
    );
  }
}
