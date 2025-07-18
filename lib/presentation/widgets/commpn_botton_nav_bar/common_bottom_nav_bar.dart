import 'package:auto_route/auto_route.dart';
import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:coinin/domain/params/bottom_bar_params.dart';
import 'package:coinin/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class CommonBottomNavBar extends StatelessWidget {
  const CommonBottomNavBar({super.key, required this.tabsRouter});

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final l10n = context.l10n;
    final items = <({BottomBarParams params})>[
      (
        params: BottomBarParams(
          icon: Assets.icons.bottomBar.home,
          title: l10n.home,
        ),
      ),
      (
        params: BottomBarParams(
          icon: Assets.icons.bottomBar.search,
          title: l10n.search,
        ),
      ),
      (
        params: BottomBarParams(
          icon: Assets.icons.bottomBar.history,
          title: l10n.history,
        ),
      ),
      (
        params: BottomBarParams(
          icon: Assets.icons.bottomBar.collection,
          title: l10n.collection,
        ),
      ),
    ];
    final theme = Theme.of(context).bottomNavigationBarTheme;

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: colors.button,
          type: BottomNavigationBarType.fixed,
          currentIndex: tabsRouter.activeIndex >= 2
              ? tabsRouter.activeIndex + 1
              : tabsRouter.activeIndex,
          onTap: (index) {
            if (index == 2) return; // Пропуск FAB
            final realIndex = index > 2 ? index - 1 : index;
            tabsRouter.setActiveIndex(realIndex);
          },

          selectedLabelStyle: context.typography.bodyMedium?.copyWith(
            color: theme.unselectedItemColor,
          ),
          unselectedLabelStyle: context.typography.bodyMedium?.copyWith(
            color: theme.selectedItemColor,
          ),
          items: List<BottomNavigationBarItem>.generate(items.length + 1, (
            index,
          ) {
            if (index == 2) {
              // space under FAB
              return BottomNavigationBarItem(
                icon: SizedBox(width: 80),
                label: '',
              );
            }

            final realIndex = index > 1 ? index - 1 : index; // Index offset
            final elem = items[realIndex];
            final bool isSelected = tabsRouter.activeIndex == realIndex;
            final color = isSelected
                ? theme.selectedItemColor
                : theme.unselectedItemColor;
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  elem.params.icon.svg(
                    colorFilter: color != null
                        ? ColorFilter.mode(color, BlendMode.srcIn)
                        : null,
                  ),
                ],
              ),
              label: elem.params.title,
            );
          }),
        ),
      ),
    );
  }
}
