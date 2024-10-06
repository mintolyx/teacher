class DbProvider {
  static Future<dynamic> postRequest(String params, Map<String, String> query,
      Map<String, dynamic> body) async {}
  static Future<dynamic> getRequest(
      String params, Map<String, String> query) async {}
  static Future<dynamic> patchRequest(String params, Map<String, String> query,
      Map<String, dynamic> body) async {}
  static Future<dynamic> deleteRequest(
      String params, Map<String, String> query) async {}
}
