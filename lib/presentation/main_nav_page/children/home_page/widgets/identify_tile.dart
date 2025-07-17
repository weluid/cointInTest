import 'dart:math';

import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:coinin/generated/assets.gen.dart';
import 'package:coinin/presentation/widgets/common_button.dart';
import 'package:flutter/material.dart';

class IdentifyTile extends StatelessWidget {
  const IdentifyTile({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final typography = context.typography;
    final l10n = context.l10n;

    final coinSize = MediaQuery.of(context).size.height * 0.18;
    final decoratedBoxSize = MediaQuery.of(context).size.height * 0.2;
    final allTileSize = MediaQuery.of(context).size.height * 0.3;
    return SizedBox(
      height: allTileSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: coinSize / 2,
            right: 0,
            left: 0,
            child: SizedBox(
              height: decoratedBoxSize,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: colors.cardBackground,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
          Positioned(
            // selects the greater of two values
            bottom: max(25, MediaQuery.of(context).size.height * 0.03),
            left: 77,
            right: 77,
            child: CommonButton.primary(
              onPressed: () {},
              label: "",
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.icons.bottomBar.identification.svg(
                    colorFilter: ColorFilter.mode(
                      colors.primary,

                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    l10n.identifyCoin,
                    style: typography.headlineMedium?.copyWith(
                      color: colors.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: SizedBox(
              height: coinSize,
              width: coinSize,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(coinSize),
                ),
                child: Assets.images.homePage.mainCoin.image(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
