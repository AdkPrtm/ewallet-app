import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template_clean_architecture/core/resource/method/notification.dart';
import 'package:template_clean_architecture/core/resource/resource.dart';
import 'package:template_clean_architecture/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:template_clean_architecture/features/product/product.dart';
import 'package:template_clean_architecture/features/tips/presentation/bloc/tips_bloc.dart';
import 'package:template_clean_architecture/features/topup/presentation/bloc/topup_bloc.dart';
import 'package:template_clean_architecture/features/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:template_clean_architecture/features/transfer/presentation/bloc/transfer_bloc.dart';
import 'package:template_clean_architecture/features/user/presentation/bloc/user_bloc.dart';
import 'package:template_clean_architecture/firebase_options.dart';
import 'package:template_clean_architecture/injection_container.dart';

final navigatorKey = GlobalKey<NavigatorState>();


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  registerNotification();
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
              create: (_) => sl<AuthBloc>()..add(ValidationTokenEvent()),
            ),
            BlocProvider(create: (_) => sl<UserBloc>()),
            BlocProvider(
                create: (_) => sl<UserBloc>()..add(GetCurrentUserEvent())),
            BlocProvider(create: (_) => sl<TopupBloc>()),
            BlocProvider(create: (_) => sl<TransferBloc>()),
            BlocProvider(create: (_) => sl<TipsBloc>()..add(GetTipsEvent())),
            BlocProvider(create: (_) => sl<TransactionBloc>()),
            BlocProvider(create: (_) => sl<ProductBloc>()),
            // BlocProvider(
            //   create: (_) => sl<TransactionBloc>()
            //     ..add(const GetTransactionHistoryEvent(limit: '5')),
            // ),
          ],
          child: MaterialApp(
            title: 'Ewallet App',
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
            navigatorKey: navigatorKey,
          ),
        );
      },
    );
  }
}
