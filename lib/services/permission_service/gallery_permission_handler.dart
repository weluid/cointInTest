import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:coinin/presentation/widgets/common_alert_dialog.dart';
import 'general_permission/permission_service.dart';

class GalleryPermissionHandler implements PermissionService {
  @override
  Future<bool> handlePermission({
    required BuildContext context,
    bool showDialogValue = true,
  }) async {
    final l10n = context.l10n;
    late bool canProceed;
    await requestPermission().then((PermissionStatus permissionStatus) {
      if (permissionStatus == PermissionStatus.denied ||
          permissionStatus == PermissionStatus.permanentlyDenied) {
        showDialog(
          context: context,
          builder: (context) => CommonAlertDialog(
            title: l10n.accessGallery,
            description: l10n.accessCameraDescr,
            primaryButtonTitle: l10n.toSettings,
            secondaryButtonText: l10n.cancel,
            primaryButtonTap: openAppSettings,
            secondaryButtonTap: () {
              context.maybePop();
            },
          ),
        );
        canProceed = false;
      } else {
        canProceed = true;
      }
    });
    return canProceed;
  }

  @override
  Future<PermissionStatus> requestPermission() async {
    if (Platform.isAndroid) {
      return await Permission.mediaLibrary.request();
    } else {
      return await Permission.photos.request();
    }
  }
}
