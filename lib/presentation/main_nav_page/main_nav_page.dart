import 'package:auto_route/auto_route.dart';
import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:coinin/generated/assets.gen.dart';
import 'package:coinin/presentation/router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainNavPage extends StatelessWidget {
  const MainNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final items = <({SvgGenImage icon})>[
      (icon: Assets.icons.bottomBar.home),
      (icon: Assets.icons.bottomBar.search),
      (icon: Assets.icons.bottomBar.history),
      (icon: Assets.icons.bottomBar.collection),
    ];
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
      bottomNavigationBuilder: (_, tabsRouter) {
        final theme = Theme.of(context).bottomNavigationBarTheme;
        return BottomAppBar(
          color: colors.button,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List<Widget>.generate(items.length, (index) {
              final elem = items[index];
              final bool isSelected = tabsRouter.activeIndex == index;
              final color = isSelected
                  ? theme.selectedItemColor
                  : theme.unselectedItemColor;

              return Expanded(
                child: IconButton(
                  onPressed: () => tabsRouter.setActiveIndex(index),
                  icon: elem.icon.svg(
                    colorFilter: color != null
                        ? ColorFilter.mode(color, BlendMode.srcIn)
                        : null,
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
