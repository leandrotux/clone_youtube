class Video {
  String id;
  String title;
  String description;
  String image;
  String channel;
  String channelTitle;

  Video(
      {this.id,
      this.title,
      this.description,
      this.image,
      this.channel,
      this.channelTitle});

  /*
  static converterJson(Map<String, dynamic> json){
    return Video(
      id: json["id"]["videoId"],
      title: json["snippet"]["title"],
      description: json["snippet"]["description"],
      image: json["snippet"]["thumbnails"]["high"]["url"],
      channel: json["snippet"]["channelId"],
    );
  }*/

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
        id: json["id"]["videoId"],
        title: json["snippet"]["title"],
        description: json["snippet"]["description"],
        image: json["snippet"]["thumbnails"]["high"]["url"],
        channel: json["snippet"]["channelId"],
        channelTitle: json["snippet"]["channelTitle"]);
  }
}
