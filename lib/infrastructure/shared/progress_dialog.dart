import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme/colors.theme.dart';


bool _isShowing = false;
bool _barrierDismissible = true, _showLogs = false;

double _borderRadius = 8.0;
Color _backgroundColor = Colors.transparent;
Curve _insetAnimCurve = Curves.easeInOut;

Widget? _progressWidget = Container(); //Lottie.asset(Res.loader,width: 50,height: 50);

class ProgressDialog {
  late _Body _dialog;

  ProgressDialog({bool isDismissible = false, bool showLogs = false}) {
    _barrierDismissible = true;
    _showLogs = showLogs;
  }

  bool isShowing() {
    return _isShowing;
  }

  Future<bool> dismiss() {
    if (_isShowing) {
      try {
        _isShowing = false;
        Get.back();
        if (_showLogs) debugPrint('ProgressDialog dismissed');
        return Future.value(true);
      } catch (_) {
        return Future.value(false);
      }
    } else {
      if (_showLogs) debugPrint('ProgressDialog already dismissed');
      return Future.value(false);
    }
  }

  void show() {
    if (!_isShowing) {
      _dialog = _Body();
      _isShowing = true;
      if (_showLogs) debugPrint('ProgressDialog shown');
      Get.dialog(
         Material(
          type: MaterialType.transparency,
          child:
          Center(child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ColorsTheme.colWhite,
              borderRadius: BorderRadius.circular(14)
            ),
            child: CircularProgressIndicator(color: Colors.black,),
          ) ),
          // WillPopScope(
          //   onWillPop: () {
          //     return Future.value(_barrierDismissible);
          //   },
          //   child: Dialog(
          //       backgroundColor: _backgroundColor,
          //       insetAnimationCurve: _insetAnimCurve,
          //       insetAnimationDuration: Duration(milliseconds: 100),
          //       elevation: 0,
          //       shape: RoundedRectangleBorder(
          //           borderRadius:
          //           BorderRadius.all(Radius.circular(_borderRadius))),
          //       child: _dialog),
          // ),
        ),
        barrierDismissible: false,
      );
    } else {
      if (_showLogs) debugPrint("ProgressDialog already shown/showing");
    }
  }
}

// ignore: must_be_immutable
class _Body extends StatefulWidget {
  final _BodyState _dialog = _BodyState();

  @override
  State<StatefulWidget> createState() {
    return _dialog;
  }
}

class _BodyState extends State<_Body> {
  @override
  void dispose() {
    _isShowing = false;
    if (_showLogs) debugPrint('ProgressDialog dismissed by back button');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    var padding = width / 9;

    return Container(
        padding: EdgeInsets.all(padding),
        child: Container(
          height: MediaQuery.of(context).size.height/9,
          width: MediaQuery.of(context).size.width*0.3,
          decoration: BoxDecoration(color: ColorsTheme.colPrimary, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: CircularProgressIndicator(
              color: ColorsTheme.colWhite,

            ),
          ),
        ));
  }
}
