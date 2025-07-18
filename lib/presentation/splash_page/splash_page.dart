import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:coinin/presentation/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatelessWidget implements AutoRouteWrapper {
  const SplashPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return FutureBuilder(
      future: Future.wait([Future.delayed(const Duration(seconds: 1))]),
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          context.router.replaceAll([const MainNavRoute()]);
        }
        return this;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          context.l10n.coinIn,
          style: context.typography.headlineLarge,
        ),
      ),
    );
  }
}
