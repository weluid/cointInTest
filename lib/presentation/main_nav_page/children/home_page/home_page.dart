import 'package:auto_route/auto_route.dart';
import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:coinin/generated/assets.gen.dart';
import 'package:coinin/presentation/main_nav_page/children/home_page/widgets/settings_button.dart';
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
    final colors = context.colors;
    return DecoratedBox(
      decoration: BoxDecoration(gradient: context.commonBackgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CommonAppBar(
          backgroundColor: Colors.transparent,
          textTitle: "CoinIn",
          showBackButton: false,
          actions: SettingsButton(onTap: () {}),
        ),
        body: ListView(children: []),
      ),
    );
  }
}
