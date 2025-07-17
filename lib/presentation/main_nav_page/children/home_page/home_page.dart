import 'package:auto_route/auto_route.dart';
import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:coinin/generated/assets.gen.dart';
import 'package:coinin/presentation/main_nav_page/children/home_page/widgets/identify_tile.dart';
import 'package:coinin/presentation/widgets/common_square_button.dart';
import 'package:coinin/presentation/main_nav_page/children/home_page/widgets/subscription_banner.dart';
import 'package:coinin/presentation/router/app_router.dart';
import 'package:coinin/presentation/widgets/common_appbar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return DecoratedBox(
      decoration: BoxDecoration(gradient: context.commonBackgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CommonAppBar(
          backgroundColor: Colors.transparent,
          textTitle: l10n.coinIn,
          showBackButton: false,
          actions: CommonSquareButton(
            onTap: () => context.pushRoute(SettingsRoute()),
            icon: Assets.icons.homePage.settings.svg(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              SizedBox(height: 24),
              SubscriptionBanner(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              IdentifyTile(),
            ],
          ),
        ),
      ),
    );
  }
}
