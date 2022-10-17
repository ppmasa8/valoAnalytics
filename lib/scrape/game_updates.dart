import 'package:html/parser.dart' show parse;
import 'package:http/http.dart' as http;

void main() async {
  const url = 'https://www.oneesports.gg/valorant/';
  final target = Uri.parse(url);

  final response = await http.get(target);

  // print(response.body);

  if (response.statusCode != 200) {
    print('ERROR: ${response.statusCode}');
    return;
  }

  final document = parse(response.body);

  final title = document.querySelectorAll('h2').map((v) => v.text).toList();

  print(title);
}
