import 'dart:convert';

import 'package:ewallet/core/service/notification_service.dart';
import 'package:ewallet/features/auth/presentation/bloc/request_otp/request_otp_bloc.dart';
import 'package:ewallet/features/tips/domain/usecases/get_tips_usecase.dart';
import 'package:ewallet/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ewallet/core/resource/resource.dart';
import 'package:ewallet/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:ewallet/features/product/product.dart';
import 'package:ewallet/features/tips/presentation/bloc/tips_bloc.dart';
import 'package:ewallet/features/topup/presentation/bloc/topup_bloc.dart';
import 'package:ewallet/features/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:ewallet/features/transfer/presentation/bloc/transfer_bloc.dart';
import 'package:ewallet/features/user/presentation/bloc/user_bloc.dart';
import 'package:ewallet/injection_container.dart';

Future _firebaseBackgroundMessage(RemoteMessage message) async {
  if (message.notification != null) {
    //some message received in background
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await PushNotifications.init();
  await PushNotifications.localNotifInit();

  //Listen to background message
  FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundMessage);

  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    if (message.notification != null) {
      //Redirect to specific screen
    }
  });

  //Handle foreground notification
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    String payloadData = jsonEncode(message.data);
    if (message.notification != null) {
      PushNotifications.showSimpleNotification(
          title: message.notification!.title!,
          body: message.notification!.body!,
          payload: payloadData);
    }
  });

  //for handling in terminate state
  final RemoteMessage? message =
      await FirebaseMessaging.instance.getInitialMessage();
  if (message != null) {
    Future.delayed(const Duration(seconds: 1), () {
      //redirect to specific screen
    });
  }

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
            BlocProvider(
                create: (_) => sl<TipsBloc>()
                  ..add(GetTipsEvent(query: GetTipsQuery(page: 1, limit: 6)))),
            BlocProvider(create: (_) => sl<TransactionBloc>()),
            BlocProvider(create: (_) => sl<ProductBloc>()),
            BlocProvider(create: (_) => sl<RequestOtpBloc>()),
          ],
          child: MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
              scaffoldBackgroundColor: lightBackground,
              fontFamily: 'Poppins',
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
