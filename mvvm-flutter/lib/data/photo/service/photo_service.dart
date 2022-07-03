

import 'package:base_source/data/base/base_service.dart';
import 'package:base_source/data/base/data_result.dart';
import 'package:base_source/data/base/service_state.dart';
import 'package:base_source/data/photo/model/photo_list_model.dart';
import 'package:flutter/foundation.dart';

class PhotoService extends BaseService{
  Future<DataResult<List<Photo>>> getPhotos() async {
    try {
      var response = await httpGet("https://jsonplaceholder.typicode.com/photos");
      if (success == response.statusCode) {
        if (response.bodyString == null || response.bodyString!.isEmpty) {
          return DataResult.failure(APIFailure(invalidResponse, 'Invalid Response'));
        }
        var data = await compute(photoListModelFromJson, response.bodyString ?? "");
        return DataResult.success(data);
      }
      return DataResult.failure(APIFailure(invalidResponse, 'Invalid Response'));
    } catch (exception) {
      return getError(exception);
    }
  }
}