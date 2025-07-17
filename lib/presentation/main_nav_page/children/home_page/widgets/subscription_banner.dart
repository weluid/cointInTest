import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:coinin/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class SubscriptionBanner extends StatelessWidget {
  const SubscriptionBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = context.typography;
    final l10n = context.l10n;
    return SizedBox(
      height: MediaQuery.of(context).size.height * .1,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: context.bannerGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              _CoinFrame(),
              SizedBox(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.freePremium, style: typography.titleLarge),
                  Text(l10n.tapToClaim, style: typography.titleSmall),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CoinFrame extends StatelessWidget {
  const _CoinFrame();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Assets.images.homePage.coin.image(),
        ),
        Assets.images.homePage.corner.svg(),
      ],
    );
  }
}
