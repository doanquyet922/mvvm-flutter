import 'dart:async';
import 'dart:io';

import 'package:base_source/data/base/data_result.dart';
import 'package:base_source/data/base/service_state.dart';
import 'package:get/get.dart';

const timeOutMess = "Time out";
const timeOutDuration = Duration(seconds: 3);

abstract class BaseService extends GetConnect {
  Future<Response> httpGet(String url, {Map<String, String>? headers}) {
    print("BaseService $url");
    return get(url, headers: headers);
  }

  getError(exception) {
    print("BaseService $exception");
    if (exception is HttpException) {
      return DataResult.failure(APIFailure(noInternet, 'No Internet Connection'));
    } else if (exception is TimeoutException) {
      return DataResult.failure(APIFailure(timeOut, 'Time out'));
    } else if (exception is SocketException) {
      return DataResult.failure(APIFailure(noInternet, 'No Internet Connection'));
    } else if (exception is FormatException) {
      return DataResult.failure(APIFailure(invalidFormat, 'Invalid Format'));
    } else {
      return DataResult.failure(exception is Failure ? exception : APIFailure(unknownError, "Unknow error"));
    }
  }
}
