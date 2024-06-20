import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      List<ConnectivityResult> hasConnection =
          await (Connectivity().checkConnectivity());
      if (hasConnection.contains(ConnectivityResult.none)) {
        Future.delayed(Duration.zero, () {
          Navigator.pushNamedAndRemoveUntil(
              context, '/signin', (route) => false);
        });
      }
    });
  }

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
            body: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  SizedBox(
                    height: 50,
                    width: 155,
                    child: Image.asset(
                      ImgString.logoDarkImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 24.w,
                    height: 24.w,
                    margin: EdgeInsets.symmetric(vertical: 200.h),
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        return Container();
      },
    );
  }
}
