# flutter_tiktok

仿写抖音的flutter app。主要实现了看视频功能

# 实现功能

- 上下刷视频，视频会自动加载封面
- 左右滑动去搜索与个人中心
- 双击冒爱心点赞
- 看评论
- 切换底部Tabbar

# 应用截图

![截图1](./screenshot.png)

# 文件结构

```bash
./lib
├── main.dart
├── mock
│   └── video.dart
├── other
│   └── bottomSheet.dart
├── pages
│   ├── cameraPage.dart
│   ├── followPage.dart
│   ├── homePage.dart
│   ├── msgDetailListPage.dart
│   ├── msgPage.dart
│   ├── searchPage.dart
│   ├── todoPage.dart
│   ├── userDetailPage.dart
│   ├── userPage.dart
│   └── walletPage.dart
├── r.dart # 资源文件
├── style
│   ├── style.dart
│   └── text.dart
└── views
    ├── backButton.dart
    ├── loadingButton.dart
    ├── selectText.dart
    ├── tikTokCommentBottomSheet.dart
    ├── tikTokHeader.dart
    ├── tikTokScaffold.dart
    ├── tikTokVideo.dart
    ├── tikTokVideoButtonColumn.dart
    ├── tikTokVideoGesture.dart
    ├── tikTokVideoPlayer.dart
    ├── tiktokTabBar.dart
    ├── tilTokAppBar.dart
    ├── topToolRow.dart
    ├── transparent_page.dart
    └── userMsgRow.dart
```

# 致谢

左右滑动手势代码来自项目 https://github.com/ditclear/tiktok_gestures 作者的封装，在此致谢。

# 请我喝咖啡

我相信本项目的代码一定能在商业项目上帮助到您，如果您从本项目中获益，不妨请作者我喝杯咖啡：

![请我喝咖啡](./screenshot.png)