import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class SendOTPCall {
  static Future<ApiCallResponse> call({
    String? phoneNumber = '+201559691558',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SendOTP',
      apiUrl:
          'http://ec2-3-68-117-125.eu-central-1.compute.amazonaws.com/v1/auth/otp',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'phoneNumber': phoneNumber,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? phoneNumber = '',
    String? otp = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl:
          'http://ec2-3-68-117-125.eu-central-1.compute.amazonaws.com/v1/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'phoneNumber': phoneNumber,
        'otp': otp,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }

  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.accessToken''',
      );
}

class ClaimNFTCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'ClaimNFT',
      apiUrl:
          'http://ec2-3-68-117-125.eu-central-1.compute.amazonaws.com/v1/utility-nft/claim/62fbcfd1ea472327e2190b2c',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'accessToken': accessToken,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}
