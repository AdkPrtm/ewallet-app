import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:template_clean_architecture/feature/user/presentation/bloc/user_bloc.dart';
import 'package:template_clean_architecture/injection_container.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => sl<AuthBloc>()..add(GetCurrentUser()),
            ),
            BlocProvider(create: (_) => sl<UserBloc>()),
          ],
          child: MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
              scaffoldBackgroundColor: lightBackground,
              appBarTheme: AppBarTheme(
                centerTitle: true,
                backgroundColor: lightBackground,
                titleTextStyle: AppFont().blackTextStyle.copyWith(
                      fontSize: 20.sp,
                      fontWeight: AppFont().semibold,
                    ),
              ),
            ),
            onGenerateRoute: AppRoutes.onGenerateRoutes,
          ),
        );
      },
    );
  }
}
