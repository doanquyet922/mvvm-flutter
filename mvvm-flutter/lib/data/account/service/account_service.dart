
import 'package:base_source/data/account/model/account_model.dart';
import 'package:base_source/data/base/base_service.dart';
import 'package:base_source/data/base/data_result.dart';
import 'package:base_source/data/base/service_state.dart';

class AccountServices extends BaseService {
  Future<DataResult<AccountModel>> signIn(String user, String pass) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      // var response = await httpGet("https://jsonplaceholder.typicode.com/users");
      // if (success == response.statusCode) {
      //   if (response.bodyString == null || response.bodyString!.isEmpty) {
      //     return DataResult.failure(APIFailure(invalidResponse, 'Invalid Response'));
      //   }
      //   // var data = usersListModelFromJson(response.bodyString ?? ""); // compute
      //   // var data = await compute(usersListModelFromJson, response.bodyString ?? ""); // compute
      //   return DataResult.success(data);
      // }
      return DataResult.failure(APIFailure(invalidResponse, 'Invalid Response'));
    } catch (exception) {
      return getError(exception);
    }
  }
}
