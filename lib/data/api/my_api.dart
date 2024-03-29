import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../core/constant/colors.dart';
import '../../domain/end_points/end_points.dart';
import '../../presentation/components/alert.dart';
import '../../presentation/widgets/my_loading.dart';



String baseUrl = EndPoints.baseUrl;

class DioHelper {
  static Dio myDio = Dio();
  DioHelper() {
    myDio = Dio(
      BaseOptions(
          headers: {
            "Accept": "application/json",
            "content-type": "application/json",
          },
          baseUrl: '',
          receiveDataWhenStatusError: true,
          connectTimeout: 30000,
          receiveTimeout: 30000,
          sendTimeout: 30000),
    )..interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestBody: true,
        ),
      );
  }

  Future<Response?> postData({
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
    String? token,
    String? base,
    bool loading = false,
    bool isForm = false,
  }) async {
    myDio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
    if (token == null) {
      myDio.options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };
    }
    try {
      if (loading) {
        MyLoading.show();
      }
      final response = await myDio.post((base ?? baseUrl) + url,
          queryParameters: query,
          data: isForm ? FormData.fromMap(body ?? {}) : body);

      if (loading) {
        MyLoading.dismis();
      }

      // response.data["message"].toString().isNotEmpty== true?  OverLays.toast(text:
      //  response.data["message"].toString(),
      //  ):SizedBox();
      return response;
    } on DioError catch (e) {
      getDioError(
        e: e,
      );
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<Response?> putData({
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
    String? token,
    String? base,
    bool loading = false,
    bool isForm = false,
  }) async {
    myDio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
    if (token == null) {
      myDio.options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };
    }
    try {
      if (loading) {
        MyLoading.show();
      }
      final response = await myDio.put((base ?? baseUrl) + url,
          queryParameters: query,
          data: isForm ? FormData.fromMap(body ?? {}) : body);
      if (loading) {
        MyLoading.dismis();
      }
      return response;
    } on DioError catch (e) {
      getDioError(e: e);
    } catch (e) {
      return null;
    }
  }

  static Future<Response?> deleteData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    String? base,
    bool loading = false,
  }) async {
    myDio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };

    try {
      if (loading) {
        MyLoading.show();
      }
      final response =
          await myDio.delete((base ?? baseUrl) + url, queryParameters: query);
      if (loading) {
        MyLoading.dismis();
      }
      return response;
    } on DioError catch (e) {
      getDioError(e: e);
    } catch (e) {
      return null;
    }
  }

  static Future<Response?> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    String? base,
    // required BuildContext? context,
    bool loading = false,
  }) async {
    myDio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
      // 'Accept-Language': context?.locale == Locale('en', 'US') ? 'en' : 'ar',
    };
    if (token == null) {
      myDio.options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'Accept-Language': context?.locale == Locale('en', 'US') ? 'en' : 'ar',
      };
    }

    try {
      if (loading) {
        MyLoading.show();
      }
      final response =
          await myDio.get(((base ?? baseUrl)) + url, queryParameters: query);
      if (loading) {
        MyLoading.dismis();
      }
      // print('response DIO');
      // print(response);
      return response;

    } on DioError catch (e) {
      getDioError(
        e: e,
      );
    } catch (e) {
      return null;
    }
  }

  static getDioError({
    required DioError e,
  }) {
    log("---------------autherrr");
    MyLoading.dismis();

    if (DioErrorType.receiveTimeout == e.type ||
        DioErrorType.connectTimeout == e.type) {
      // OverLays.snack(text: "Connetion timeout", state: SnakState.failed);

      Fluttertoast.showToast(
          msg: 'Connection timeout'.tr(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 3,
          backgroundColor: AppColors.primary,
          textColor: Colors.white,
          fontSize: 16.0);

      log('case 1');
      log('Server is not reachable. Please verify your internet connection and try again');
    } else if (DioErrorType.response == e.type) {
      log('case 2');
      log('Server reachable. Error in resposne');
      OverLays.toast(
          text: e.response?.data["errors"] ?? "لا يمكن الوصول للسيرفير",
         color: AppColors.brownColor,
      );
      Fluttertoast.showToast(
          msg: e.response?.data["message"] ?? (e.response!.data["error"]??"لا يمكن الوصول للسيرفير".tr()),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 3,
          backgroundColor: AppColors.primary,
          textColor: Colors.white,
          fontSize: 16.0);

      log("hello im errroe");
      if (e.response!.statusCode == 401) {
        // OverLays.snack(
        //     text: e.response!.data["message"], state: SnakState.failed);
        Fluttertoast.showToast(
            msg: e.response!.data["message"]?? e.response!.data["error"],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 3,
            backgroundColor: AppColors.primary,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } else if (DioErrorType.other == e.type) {
      if (e.message.contains('SocketException')) {
        log('Network error');
        log('case 3');
        Fluttertoast.showToast(
            msg: 'No Network'.tr(),
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 3,
            backgroundColor: AppColors.primary,
            textColor: Colors.white,
            fontSize: 16.0);
        // OverLays.snack(text: "No Network", state: SnakState.failed);
      }
    } else {
      // show snak server error

      log('case 4');
      log('Problem connecting to the server. Please try again.');
    }
    return null;
  }
}
