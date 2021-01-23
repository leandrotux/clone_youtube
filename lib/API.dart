import 'package:http/http.dart' as http;
import 'dart:convert';

import 'Model/Video.dart';

const KEY_API_YOUTUBE = "AIzaSyAlRLqeuW9ogOpjaDz9uE14Rbx0FtIq89Y";
const ID_CHANNEL = "UCJm7i4g4z7ZGcJA_HKHLCVw";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  pesquisar(String pesquisar) async {
    http.Response response = await http.get(URL_BASE +
        "search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$KEY_API_YOUTUBE"
            "&channelId=$ID_CHANNEL"
            "&q=$pesquisar");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);

      List<Video> videos = dadosJson["items"].map<Video>((map) {
        return Video.fromJson(map);
      }).toList();
    } else {}
  }
}
