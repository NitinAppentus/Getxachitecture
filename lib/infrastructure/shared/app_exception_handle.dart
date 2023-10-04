import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../utills/snackbar.util.dart';


class AppExceptionHandle {

  showException(code, message, DioError dioError,{required type}) {
    if(type == 'socketError'){
      SnackBarUtil.showError(message: 'no_internet_connection'.tr);
    }
    else{
      if (dioError.type == DioErrorType.connectionTimeout) {
        SnackBarUtil.showError(message: 'connection_timeout_exception'.tr);
      } else if (dioError.type == DioErrorType.receiveTimeout) {
        SnackBarUtil.showError(message: 'connection_timeout_exception'.tr);
      } else {
        if (code == 400) {
          SnackBarUtil.showError(message: message);
        } else if (code == 401 || code == 401) {
          SnackBarUtil.showError(message: "$code ${'access_denied'.tr}");
        } else if (code == 500) {
          SnackBarUtil.showError(message: "$code ${'server_error'.tr}");
        }
        else{
          // SnackBarUtil.showError(message: message);
        }
      }
    }
  }


  handleFirebaseException(errorCode) {
    print(errorCode);
    switch (errorCode) {
      case "user-disabled":
        return "User disabled";
      case "too-many-requests":
        return "firebase_too_many_request".tr;
      case "invalid-phone-number":
        return "firebase_invalid_phone_number".tr;
      case "invalid-verification-code":
        return "firebase_invalid_code".tr;
      case "session-expired":
        return "firebase_session_expired".tr;
      case "quota-exceeded":
        return 'quota exceed';
      case "operation-not-allowed":
        return "operation-not-allowed";
      case "network-request-failed":
        return "network-request-failed";
      default:
        return "something_went_wrong".tr;
    }
  }

}