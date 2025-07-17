import 'package:auto_route/auto_route.dart';
import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:coinin/generated/assets.gen.dart';
import 'package:coinin/presentation/router/app_router.dart';
import 'package:coinin/presentation/widgets/commpn_botton_nav_bar/common_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainNavPage extends StatelessWidget {
  const MainNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        SearchRoute(),
        HistoryRoute(),
        CollectionRoute(),
      ],
      transitionBuilder: (context, child, animation) => child,
      lazyLoad: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: colors.primary.withValues(alpha: 0.4),
            width: 5,
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.all(5),
          child: FloatingActionButton(
            elevation: 0,
            shape: const CircleBorder(),
            backgroundColor: colors.primary,
            onPressed: () {},
            child: Assets.icons.bottomBar.identification.svg(),
          ),
        ),
      ),
      bottomNavigationBuilder: (context, tabsRouter) {
        return CommonBottomNavBar(tabsRouter: tabsRouter);
      },
    );
  }
}
