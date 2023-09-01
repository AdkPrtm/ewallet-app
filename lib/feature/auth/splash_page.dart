import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_clean_architecture/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:template_clean_architecture/injection_container.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is CheckDataSuccess) {
          print(state.checkDataEntity);
        }
        if (state is AuthFailed) {
          print(state.message);
        }
        return const Scaffold(
          backgroundColor: Colors.black45,
          body: Center(
            child: SizedBox(
              height: 50,
              width: 155,
              // child: Image.asset(
              //   ImgString.logoDarkImage,
              //   fit: BoxFit.cover,
              // ),
              child: Text('data'),
            ),
          ),
        );
      },
    );
  }
}
