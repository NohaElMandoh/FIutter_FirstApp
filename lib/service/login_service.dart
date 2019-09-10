import 'package:firstapp/models/login_model.dart';
import 'package:http/http.dart' as http;

String baseUrl="http://fla4news.com/Yusor/api/v1";

Future<List<Data>> log() async{
  final ressponse=await http.get("$baseUrl/login");
//  return Data.fromJson(ressponse.body);

}