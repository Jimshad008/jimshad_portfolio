import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:url_launcher/url_launcher.dart';
 const folderId="1dhVcR5XsvbZX1_W5qAPyYokSFIi8Rn1N";
launchURL(String urls) async {
  var url = urls;
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
Future<String?> fetchVideo() async {


  try {
    String result="";
    const String apiUrl =
        'https://www.googleapis.com/drive/v3/files?q=\'$folderId\'+in+parents&fields=files(id, name, webContentLink)&key=AIzaSyDFoxn2Tqrn-WNW--bmdf8EqrJYCRX-1vE';
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final List<dynamic> files = jsonData['files'];
              result=files[0]["webContentLink"];
      //      print(jsonData);
      //      print(files);
      //      print("WQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ");
      // result["url"]= files
      //     .where((file) => file['name'].toString().toLowerCase().endsWith('.mp4'))
      //     .map<String>((file) => file['webContentLink'])
      //     .toList();
      // result["id"]=files
      //     .where((file) => file['name'].toString().toLowerCase().endsWith('.mp4'))
      //     .map<String>((file) => file['id'])
      //     .toList();
      // result["name"]=files
      //     .where((file) => file['name'].toString().toLowerCase().endsWith('.mp4'))
      //     .map<String>((file) => file['name'])
      //     .toList();
      return result;
    } else {
     return null;
    }

  } catch (e) {
    print( e.toString());
  }
  return null;
}