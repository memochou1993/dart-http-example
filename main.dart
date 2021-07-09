import 'package:http/http.dart' as http;

void main() async {
  var client = http.Client();
  try {
    var url = Uri.parse('https://json.epoch.tw/api/records/{code}');
    print((await client.get(url)).body);
  } finally {
    client.close();
  }
}
