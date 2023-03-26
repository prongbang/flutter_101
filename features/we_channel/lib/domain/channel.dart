import 'dart:convert';

import 'package:we_channel/domain/comment.dart';

List<Channel> channelFromJson(String str) =>
    List<Channel>.from(json.decode(str).map((x) => Channel.fromJson(x)));

String channelToJson(List<Channel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Channel {
  Channel({
    this.id = 0,
    this.title = '',
    this.cover = '',
    this.hlsUrl = '',
    this.author = '',
    this.avatar = '',
    this.view = '',
    this.date = '',
    this.time = '',
    this.comments = const <Comment>[],
  });

  int id;
  String title;
  String cover;
  String hlsUrl;
  String author;
  String avatar;
  String view;
  String date;
  String time;
  List<Comment> comments;

  factory Channel.fromJson(Map<String, dynamic> json) => Channel(
        id: json["id"] ?? 0,
        title: json["title"] ?? '',
        cover: json["cover"] ?? '',
        hlsUrl: json["hlsUrl"] ?? '',
        author: json["author"] ?? '',
        avatar: json["avatar"] ?? '',
        view: json["view"] ?? '',
        date: json["date"] ?? '',
        time: json["time"] ?? '',
        comments: json["comments"] != null
            ? List<Comment>.from(
                json["comments"].map((x) => Comment.fromJson(x)),
              )
            : [],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "cover": cover,
        "hlsUrl": hlsUrl,
        "author": author,
        "avatar": avatar,
        "view": view,
        "date": date,
        "time": time,
        "comments": List<dynamic>.from(comments.map((x) => x.toJson())),
      };
}

extension ChannelExtension on Channel {
  Future<List<Channel>> mocks() async {
    await Future.delayed(Duration(seconds: 2));
    return Future.value(<Channel>[
      Channel.fromJson({
        "id": 1,
        "title": "Trembling Flying",
        "cover":
            "https://images.pexels.com/photos/5011647/pexels-photo-5011647.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl": "https://content.jwplatform.com/manifests/yp34SRmf.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 2,
        "title": "The Shadowy Names",
        "cover":
            "https://images.pexels.com/photos/924824/pexels-photo-924824.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl":
            "https://bitdash-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 3,
        "title": "Man of Child",
        "cover":
            "https://images.pexels.com/photos/1105666/pexels-photo-1105666.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl":
            "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 4,
        "title": "The Heart's Alien",
        "cover":
            "https://images.pexels.com/photos/1072179/pexels-photo-1072179.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl":
            "https://bitmovin-a.akamaihd.net/content/playhouse-vr/m3u8s/105560.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 5,
        "title": "The Bride of the Trainer",
        "cover":
            "https://images.pexels.com/photos/2387873/pexels-photo-2387873.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl":
            "https://multiplatform-f.akamaihd.net/i/multi/will/bunny/big_buck_bunny_,640x360_400,640x360_700,640x360_1000,950x540_1500,.f4v.csmil/master.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 6,
        "title": "Beginning in the Crying",
        "cover":
            "https://images.pexels.com/photos/1631677/pexels-photo-1631677.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl":
            "https://devstreaming-cdn.apple.com/videos/streaming/examples/img_bipbop_adv_example_fmp4/master.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 7,
        "title": "Stripped History",
        "cover":
            "https://images.pexels.com/photos/36717/amazing-animal-beautiful-beautifull.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl":
            "https://cph-p2p-msl.akamaized.net/hls/live/2000341/test/master.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 8,
        "title": "The Sucking Dreams",
        "cover":
            "https://images.pexels.com/photos/572897/pexels-photo-572897.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl": "https://edge.flowplayer.org/playful.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 9,
        "title": "Luck of Dreamer",
        "cover":
            "https://images.pexels.com/photos/2559941/pexels-photo-2559941.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl": "https://vd1.wmspanel.com/video_demo/stream/playlist.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 10,
        "title": "The Thought's Prince",
        "cover":
            "https://images.pexels.com/photos/1763075/pexels-photo-1763075.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl": "https://content.jwplatform.com/manifests/yp34SRmf.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 11,
        "title": "The Planet of the Crying",
        "cover":
            "https://images.pexels.com/photos/325185/pexels-photo-325185.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl":
            "https://bitdash-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 12,
        "title": "Guardian in the Obsession",
        "cover":
            "https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl":
            "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 13,
        "title": "The Husband of the Female",
        "cover":
            "https://images.pexels.com/photos/1287145/pexels-photo-1287145.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl":
            "https://bitmovin-a.akamaihd.net/content/playhouse-vr/m3u8s/105560.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 14,
        "title": "The Thought's Soul",
        "cover":
            "https://images.pexels.com/photos/531321/pexels-photo-531321.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl":
            "https://multiplatform-f.akamaihd.net/i/multi/will/bunny/big_buck_bunny_,640x360_400,640x360_700,640x360_1000,950x540_1500,.f4v.csmil/master.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 15,
        "title": "The Smooth Rainbow",
        "cover":
            "https://images.pexels.com/photos/33041/antelope-canyon-lower-canyon-arizona.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl":
            "https://devstreaming-cdn.apple.com/videos/streaming/examples/img_bipbop_adv_example_fmp4/master.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 16,
        "title": "The Heat of the Silence",
        "cover":
            "https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl":
            "https://cph-p2p-msl.akamaized.net/hls/live/2000341/test/master.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 17,
        "title": "The Shadow of the Return",
        "cover":
            "https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl": "https://edge.flowplayer.org/playful.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
      Channel.fromJson({
        "id": 18,
        "title": "The Trembling Rose",
        "cover":
            "https://images.pexels.com/photos/2440079/pexels-photo-2440079.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "hlsUrl": "https://vd1.wmspanel.com/video_demo/stream/playlist.m3u8",
        "author": "Tamati Anis",
        "avatar": "https://ui-avatars.com/api/?background=random",
        "view": "100M views",
        "date": "2 days ago",
        "time": "9:09"
      }),
    ]);
  }
}
