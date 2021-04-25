import 'package:flutter/material.dart';
import 'package:flutter_101/src/qr_reader/qr_reader_widget.dart';

class QrReaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('QR READER')),
      body: QrReaderWidget(),
    );
  }
}
