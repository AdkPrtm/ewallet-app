import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/features/auth/presentation/bloc/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthDone) {
          Future.delayed(Duration.zero, () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/home', (route) => false);
          });
        }
        if (state is AuthFailed) {
          Future.delayed(Duration.zero, () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/signin', (route) => false);
          });
        }
        if (state is AuthLoading) {
          return Scaffold(
            backgroundColor: Colors.black45,
            body: Center(
              child: SizedBox(
                height: 50,
                width: 155,
                child: Image.asset(
                  ImgString.logoDarkImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        }
        return Container();
      },
    );
    // return BlocBuilder<TopupBloc, TopupState>(
    //   builder: (context, state) {
    //     if (state is PaymentMethodLoaded) {
    //       print(state.paymentDataTopup);
    //     }
    //     if (state is TopupFailed) {
    //       print(state.message);
    //     }
    //     return Container();
    //   },
    // );
  }
}
