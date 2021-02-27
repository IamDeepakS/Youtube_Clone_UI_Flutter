List menus = [
  " All ",
  "Flutter",
  "Flutter Development",
  "Android",
  "Dominator Technologies"
];

class VideoModel {
  final String name,
      thumbnail,
      username,
      title,
      dayago,
      viewcount,
      subscribeCount,
      likeCount,
      unlickCount,
      commentsCount;
  final videoUrl;

  VideoModel({
    this.name,
    this.thumbnail,
    this.username,
    this.title,
    this.dayago,
    this.viewcount,
    this.subscribeCount,
    this.likeCount,
    this.unlickCount,
    this.videoUrl,
    this.commentsCount,
  });
}

List<VideoModel> dummyData = [
  new VideoModel(
    name: "Stuart",
    thumbnail: "assets/images/wall1.jpg",
    username: "Dominator Technologies",
    title: "Building Flutter Google Pay Clone UI from Scratch",
    dayago: "2 days ago",
    viewcount: "20k",
    likeCount: "11k",
    subscribeCount: "23k",
    unlickCount: "1k",
    videoUrl: "https://www.youtube.com/watch?v=42dsOBl56oU&t",
    commentsCount: "42.5k",
  ),
  new VideoModel(
    name: "Harry",
    thumbnail: "assets/images/wall2.png",
    username: "Dominator Technologies",
    title:
        "Modern Dashboard UI in Java | Employee Management System| Swing | Netbeans Project",
    dayago: "8 months ago",
    viewcount: "15k",
    likeCount: "11k",
    subscribeCount: "23k",
    unlickCount: "1k",
    videoUrl: "https://www.youtube.com/watch?v=A0y_iorqhXg",
    commentsCount: "42.5k",
  ),
  new VideoModel(
    name: "Miles",
    thumbnail: "assets/images/wall3.jpg",
    username: "Dominator Technologies",
    title:
        "Building Flutter WhatsApp Clone UI from Scratch | Flutter | UI | Android Development",
    dayago: "1 week ago",
    viewcount: "35k",
    likeCount: "11k",
    subscribeCount: "23k",
    unlickCount: "1k",
    videoUrl: "https://www.youtube.com/watch?v=7Aob-dQa_3U",
    commentsCount: "42.5k",
  ),
  new VideoModel(
    name: "Shawn",
    thumbnail: "assets/images/wall4.jpg",
    username: "Dominator Technologies",
    title: "Creative Flyer Design | Photoshop CC Tutorial | A4 Size",
    dayago: "3 weeks ago",
    viewcount: "23k",
    likeCount: "11k",
    subscribeCount: "23k",
    unlickCount: "1k",
    videoUrl: "https://www.youtube.com/watch?v=bTMdJp91v60",
    commentsCount: "42.5k",
  ),
  new VideoModel(
    name: "Brock",
    thumbnail: "assets/images/wall5.jpg",
    username: "Dominator Technologies",
    title:
        "Building Flutter WhatsApp Chat Screen UI from Scratch | Flutter | UI | Android Development",
    dayago: "5 days ago",
    viewcount: "5k",
    likeCount: "11k",
    subscribeCount: "23k",
    unlickCount: "1k",
    videoUrl: "https://www.youtube.com/watch?v=ssb6at5FX6Q",
    commentsCount: "42.5k",
  ),
  new VideoModel(
    name: "Shawn",
    thumbnail: "assets/images/wall6.jpg",
    username: "Dominator Technologies",
    title:
        "Adding Emoji Keyboard In Whatsapp Clone UI Using Flutter | Flutter | UI | Android Development",
    dayago: "3 days ago",
    viewcount: "47k",
    likeCount: "11k",
    subscribeCount: "23k",
    unlickCount: "1k",
    videoUrl: "https://www.youtube.com/watch?v=EzIdiqfWgog",
    commentsCount: "42.5k",
  ),
];
