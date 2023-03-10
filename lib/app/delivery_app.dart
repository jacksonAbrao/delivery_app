import 'package:delivery_app/app/core/provider/application_binding.dart';
import 'package:delivery_app/app/core/ui/theme/theme_config.dart';
import 'package:delivery_app/app/pages/auth/register/register_router.dart';
import 'package:delivery_app/app/pages/order/order_page.dart';
import 'package:delivery_app/app/pages/order/order_router.dart';
import 'package:delivery_app/app/pages/product_detail/product_detail_router.dart';
import 'package:delivery_app/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'pages/auth/login/login_router.dart';
import 'pages/home/home_router.dart';

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        title: 'Delivery App',
        theme: ThemeConfig.theme,
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => HomeRouter.page,
          '/product_detail': (context) => ProductDetailRouter.page,
          '/auth/login': (context) => LoginRouter.page,
          '/auth/register': (context) => RegisterRouter.page,
          '/order': (context) => OrderRouter.page,
        },
      ),
    );
  }
}
