import 'package:doctor/core/networking/api_error_handler.dart';
import 'package:doctor/core/networking/api_result.dart';
import 'package:doctor/features/home/data/apis/home_api_services.dart';
import 'package:doctor/features/home/data/models/specializations_response.dart';

class HomeRepository {
  final HomeApiServices _homeApiServices;

  HomeRepository(this._homeApiServices);

  Future<ApiResult<DoctorsSpecialzationResponse>>
      getDocotorsSpecialition() async {
    try {
      var response = await _homeApiServices.getDocotorsSpecialition();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
