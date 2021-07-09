import 'package:http/http.dart' as http;

void main() async {
  var client = http.Client();
  try {
    var url = Uri.parse('http://example.org');
    print((await client.get(url)).body);
  } finally {
    client.close();
  }
}
