import 'dart:convert';
import 'package:http/http.dart' as http;
import 'get_prod.dart';

class servicewrapper {
  var baseurl = "http://medbo.digitalicon.in/api/medboapi/alldoctor";

  Future<get_prod> getProdCall() async {
    var url = baseurl;
    final body = {'language': 'default', 'securecode': '123'};
    final bodyjson = json.encode(body);

    final response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: bodyjson);

    print(" url call from " + url);
    if (response.statusCode == 200) {
      print('url hit successful' + response.body);
      String data = response.body;
      print(' Doc name - ' + jsonDecode(data)['Data'][1]['DoctorName']);
      return get_prod.fromJson(json.decode(response.body));
    } else {
      print('failed to get data');
      throw Exception('Failed to get data');
    }
  }
}
