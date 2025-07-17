import 'package:auto_route/auto_route.dart';
import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:coinin/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    this.textTitle,
    this.leading,
    this.actions,
    this.elevation = false,
    this.showBackButton = true,
    this.onPressed,
    this.backgroundColor,
  });

  final String? textTitle;
  final Color? backgroundColor;
  final Widget? leading;
  final Widget? actions;
  final bool elevation;
  final VoidCallback? onPressed;
  final bool showBackButton;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return AppBar(
      automaticallyImplyLeading: false,
      title: Visibility(
        visible: textTitle != null,
        child: Text(textTitle ?? '', style: context.typography.headlineSmall),
      ),
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      backgroundColor: backgroundColor ?? colors.background,
      leading: Visibility(
        visible: showBackButton,
        child:
            leading ??
            IconButton(
              onPressed: onPressed ?? () => context.router.maybePop(),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              icon: Assets.icons.arrowLeft.svg(width: 34, height: 34),
              splashRadius: 16,
            ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Visibility(
          visible: elevation,
          child: Divider(color: colors.borderColor, height: 0),
        ),
      ),
      leadingWidth: 56,
      actionsPadding: EdgeInsets.symmetric(horizontal: 16),
      actions: actions != null ? [actions!] : null,
    );
  }
}
