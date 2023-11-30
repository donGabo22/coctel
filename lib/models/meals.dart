import 'dart:convert';

class CarneResponse {
    List<Map<String, String?>> meals;

    CarneResponse({
        required this.meals,
    });

    factory CarneResponse.fromRawJson(String str) => CarneResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory CarneResponse.fromJson(Map<String, dynamic> json) => CarneResponse(
        meals: List<Map<String, String?>>.from(json["meals"].map((x) => Map.from(x).map((k, v) => MapEntry<String, String?>(k, v)))),
    );

    Map<String, dynamic> toJson() => {
        "meals": List<dynamic>.from(meals.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
    };
}


