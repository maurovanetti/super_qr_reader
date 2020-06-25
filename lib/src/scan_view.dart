import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'package:super_qr_reader/src/qrcode_reader_view.dart';

class ScanView extends StatefulWidget {
  ScanView({Key key}) : super(key: key);

  @override
  _ScanViewState createState() => new _ScanViewState();
}

class _ScanViewState extends State<ScanView> {
  GlobalKey<QrcodeReaderViewState> _key = GlobalKey();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: QrcodeReaderView(
        strings: {
          codeInFrame: "Inquadra il QR code",
          noPermission: "Manca il permesso di utilizzo della fotocamera"
        },
        key: _key,
        onScan: onScan,
        headerWidget: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
      ),
    );
  }

  Future onScan(String data) async {
    Navigator.of(context).pop(data);
  }
}
