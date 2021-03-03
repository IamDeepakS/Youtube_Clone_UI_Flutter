import 'package:flutter/material.dart';
import 'package:youtube_ui/components/video_screen_components/video_detail_screen.dart';
import 'package:youtube_ui/models/videoModels.dart';

class VideoTiles extends StatefulWidget {
  @override
  _VideoTilesState createState() => _VideoTilesState();
}

class _VideoTilesState extends State<VideoTiles> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        dummyData.length,
        (index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => VideoDetailScreen(
                          thumbnail: dummyData[index].thumbnail,
                          commentsCount: dummyData[index].commentsCount,
                          daysAgo: dummyData[index].dayago,
                          likeCount: dummyData[index].likeCount,
                          profileImg: dummyData[index].thumbnail,
                          subscribeCount: dummyData[index].subscribeCount,
                          title: dummyData[index].title,
                          unlikeCount: dummyData[index].unlickCount,
                          username: dummyData[index].username,
                          videoUrl: dummyData[index].videoUrl,
                          viewCount: dummyData[index].viewcount,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(dummyData[index].thumbnail),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(dummyData[index].thumbnail),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 90,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dummyData[index].title,
                            maxLines: 2,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.3,
                            ),
                          ),
                          SizedBox(height: 2),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 100,
                                child: Text(
                                  dummyData[index].username +
                                      " - " +
                                      dummyData[index].viewcount,
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.more_vert, color: Colors.white),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
