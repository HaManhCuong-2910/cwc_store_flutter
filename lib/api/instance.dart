import 'package:http/http.dart' as http;

class Instance {
  Instance();

  Future<dynamic> get(String path) async {
    return await http.get(Uri.parse('http://15.12.1.82:2080/$path'));
  }
}
