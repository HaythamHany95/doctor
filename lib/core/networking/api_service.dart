import 'package:dio/dio.dart';
import 'package:doctor/core/networking/api_constants.dart';
import 'package:doctor/features/login/data/models/login_request_body.dart';
import 'package:doctor/features/login/data/models/login_response.dart';
import 'package:doctor/features/register/data/models/register_request_body.dart';
import 'package:doctor/features/register/data/models/register_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiEndPoints.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @POST(ApiEndPoints.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiEndPoints.register)
  Future<RegisterResponse> register(
    @Body() RegisterRequestBody registerRequestBody,
  );
}
