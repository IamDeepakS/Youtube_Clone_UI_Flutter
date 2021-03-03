import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:youtube_ui/components/home_components/components/video_tiles.dart';

class VideoDetailScreen extends StatefulWidget {
  final String thumbnail,
      title,
      viewCount,
      daysAgo,
      username,
      profileImg,
      subscribeCount,
      likeCount,
      unlikeCount,
      videoUrl,
      commentsCount;

  const VideoDetailScreen(
      {Key key,
      this.thumbnail,
      this.title,
      this.viewCount,
      this.daysAgo,
      this.username,
      this.profileImg,
      this.subscribeCount,
      this.likeCount,
      this.unlikeCount,
      this.videoUrl,
      this.commentsCount})
      : super(key: key);

  @override
  _VideoDetailScreenState createState() => _VideoDetailScreenState();
}

class _VideoDetailScreenState extends State<VideoDetailScreen> {
  YoutubePlayerController _playerController;

  void runYoutubePlayer() {
    _playerController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl),
      flags: YoutubePlayerFlags(
        enableCaption: false,
        isLive: false,
        autoPlay: true,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    runYoutubePlayer();
  }

  @override
  void deactivate() {
    _playerController.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
    _playerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _playerController,
      ),
      builder: (context, player) {
        return Scaffold(
          backgroundColor: Color(0xFF282828),
          body: SafeArea(
            child: Column(
              children: [
                player,
                Expanded(
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, right: 10, left: 10),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width -
                                          80,
                                      child: Text(
                                        widget.title,
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          height: 1.3,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      widget.viewCount +
                                          " views " +
                                          widget.daysAgo,
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.4),
                                        fontSize: 12,
                                        height: 1.5,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: EdgeInsets.only(right: 10, left: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.thumb_up_alt_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(height: 2),
                                          Text(
                                            widget.likeCount,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              height: 1.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.thumb_down_alt_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(height: 2),
                                          Text(
                                            widget.unlikeCount,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              height: 1.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.share_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(height: 2),
                                          Text(
                                            "Share",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              height: 1.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons
                                                .vertical_align_bottom_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(height: 2),
                                          Text(
                                            "Download",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              height: 1.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.add_to_photos_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(height: 2),
                                          Text(
                                            "Save",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              height: 1.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Divider(color: Colors.grey.withOpacity(0.3)),
                          Padding(
                            padding: EdgeInsets.only(right: 20, left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage(widget.thumbnail),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.username,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      widget.subscribeCount + "subscribers",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.4),
                                        fontSize: 12,
                                        height: 1.2,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 40, top: 12),
                                  child: Column(
                                    children: [
                                      Text(
                                        "SUBSCRIBE",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 2),
                          Divider(color: Colors.grey.withOpacity(0.3)),
                          SizedBox(height: 10),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Comments",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          widget.commentsCount,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.unfold_more,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Container(
                                  padding: EdgeInsets.only(top: 12),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 12,
                                        backgroundColor:
                                            Colors.grey.withOpacity(0.3),
                                        backgroundImage:
                                            AssetImage(widget.thumbnail),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "This is comment section.",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(color: Colors.grey.withOpacity(0.3)),
                          VideoTiles(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
