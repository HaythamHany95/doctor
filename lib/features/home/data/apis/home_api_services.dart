import 'package:dio/dio.dart';
import 'package:doctor/core/networking/api_constants.dart';
import 'package:doctor/features/home/data/apis/home_api_constatnts.dart';
import 'package:doctor/features/home/data/models/specializations_response.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_services.g.dart';

@RestApi(baseUrl: ApiEndPoints.baseUrl)
abstract class HomeApiServices {
  factory HomeApiServices(Dio dio) = _HomeApiServices;

  @GET(HomeApiConstatnts.doctorsSpecialization)
  Future<DoctorsSpecialzationResponse> getDocotorsSpecialition();
}
