import 'package:another_flushbar/flushbar.dart';
import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:coinin/presentation/widgets/common_button.dart';
import 'package:flutter/material.dart';

class FlushBarService {
  void showMessage({
    required String message,
    required BuildContext context,
    int seconds = 4,
  }) {
    final colors = context.colors;
    Flushbar(
      messageText: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
        child: Text(
          message,
          style: context.typography.titleLarge?.copyWith(color: Colors.white),
        ),
      ),
      boxShadows: const [
        BoxShadow(
          color: Color.fromRGBO(132, 149, 158, 0.15),
          offset: Offset(0, 4),
          blurRadius: 4,
        ),
      ],
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 70),
      padding: const EdgeInsets.symmetric(horizontal: 21),
      borderRadius: BorderRadius.circular(30),
      borderColor: null,
      backgroundColor: colors.primary,
      duration: const Duration(seconds: 4),
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
    ).show(context).then((result) {});
  }

  void showMessageWithButton({
    required String message,
    required BuildContext context,
    required VoidCallback onButtonTap,
    required String buttonText,
    int seconds = 4,
  }) {
    final colors = context.colors;
    Flushbar(
      messageText: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              message,
              style: context.typography.bodySmall?.copyWith(
                color: context.colors.cardBackground,
              ),
            ),
            CommonButton.outLine(
              onPressed: onButtonTap,
              borderColor: Colors.white,
              label: buttonText,
              height: 30,
              border: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                child: Text(
                  buttonText,
                  style: context.typography.bodySmall?.copyWith(
                    color: context.colors.cardBackground,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      boxShadows: const [
        BoxShadow(
          color: Color.fromRGBO(132, 149, 158, 0.15),
          offset: Offset(0, 4),
          blurRadius: 4,
        ),
      ],
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.only(left: 0, right: 0, bottom: 70),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      borderColor: null,
      backgroundColor: colors.primary,
      duration: const Duration(seconds: 4),
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
    ).show(context).then((result) {});
  }
}
