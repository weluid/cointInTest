import 'package:auto_route/auto_route.dart';
import 'package:coinin/presentation/main_nav_page/children/collection_page/collection_page.dart';
import 'package:coinin/presentation/main_nav_page/children/home_page/home_page.dart';
import 'package:coinin/presentation/main_nav_page/children/history_page/history_page.dart';
import 'package:coinin/presentation/main_nav_page/children/search_page/search_page.dart';
import 'package:coinin/presentation/main_nav_page/main_nav_page.dart';
import 'package:coinin/presentation/splash_page/splash_page.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@injectable
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter(GlobalKey<NavigatorState> navigatorKey)
    : super(navigatorKey: navigatorKey);

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(
      page: MainNavRoute.page,
      children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: SearchRoute.page),
        AutoRoute(page: HistoryRoute.page),
        AutoRoute(page: CollectionRoute.page),
      ],
    ),
  ];
}
