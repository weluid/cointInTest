import 'dart:io';
import 'dart:math';

import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:coinin/generated/assets.gen.dart';
import 'package:coinin/presentation/widgets/common_button.dart';
import 'package:coinin/presentation/widgets/common_flush.dart';
import 'package:coinin/services/permission_service/gallery_permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class IdentifyTile extends StatefulWidget {
  const IdentifyTile({super.key});

  @override
  State<IdentifyTile> createState() => _IdentifyTileState();
}

class _IdentifyTileState extends State<IdentifyTile> {
  final ValueNotifier<File?> _imageFile = ValueNotifier(null);

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
              onPressed: () async {
                await GalleryPermissionHandler()
                    .handlePermission(context: context)
                    .then((canProceed) async {
                      if (canProceed) {
                        await _pickImageFromGallery().then((image) async {
                          if (image != null) {
                            _imageFile.value = image;
                          } else {
                            FlushBarService().showMessage(
                              message: l10n.somethingWentWrong,
                              context: context,
                            );
                          }
                        });
                      }
                    });
              },
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
          ValueListenableBuilder<File?>(
            valueListenable: _imageFile,
            builder: (context, value, child) {
              return Positioned(
                top: 0,
                child: SizedBox(
                  height: coinSize,
                  width: coinSize,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(coinSize),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.35),
                          blurRadius: 12,
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 500),
                      child: value == null
                          ? Assets.images.homePage.mainCoin.image(
                              key: const ValueKey('default_image'),
                              fit: BoxFit.cover,
                            )
                          : SizedBox(
                              height: coinSize,
                              width: coinSize,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(coinSize),
                                child: Image.file(
                                  value,
                                  key: ValueKey(value.path),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Future<File?> _pickImageFromGallery() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 100,
    );

    if (pickedImage != null) {
      return File(pickedImage.path);
    } else {
      return null;
    }
  }
}
