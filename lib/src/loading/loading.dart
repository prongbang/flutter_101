import 'package:flutter/material.dart';

class LoadingDialog {
  static Dialog create() {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(),
        ],
      ),
    );
  }

  // LoadingDialog.show(context);
  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => WillPopScope(
        onWillPop: () async => false,
        child: LoadingDialog.create(),
      ),
    );
  }

  static void hide(BuildContext context) {
    Navigator.pop(context);
  }
}

// context.showLoading();
extension LoadingContext on BuildContext {
  showLoading() {
    showDialog(
      context: this,
      barrierDismissible: false,
      builder: (context) => WillPopScope(
        onWillPop: () async => false,
        child: LoadingDialog.create(),
      ),
    );
  }

  hideLoading() {
    LoadingDialog.hide(this);
  }
}
