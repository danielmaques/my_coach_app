import 'package:my_coach_app/shared/result_wrapper/model/api_item_error_model.dart';

class ApiErrorModel {
  List<ApiItemErrorModel> erros;
  int httpStatus;

  ApiErrorModel({
    required this.erros,
    required this.httpStatus,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) => ApiErrorModel(
        erros: (json['erros'] as List<dynamic>)
            .map((e) => ApiItemErrorModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        httpStatus: json['httpStatus'] as int,
      );

  Map<String, dynamic> toJson() => {
        'erros': erros,
        'httpStatus': httpStatus,
      };
}
