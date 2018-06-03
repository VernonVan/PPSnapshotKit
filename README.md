# PPSnapshotKit
对应的教程在这儿：[iOS 截图的那些事儿](https://www.jianshu.com/p/3327ffeb7fa5)

![演示](https://upload-images.jianshu.io/upload_images/698554-219189e2ec87b171.GIF?imageMogr2/auto-orient/strip)



### 安装

1. 手动导入：

   [下载](https://github.com/VernonVan/PPSnapshotKit/archive/master.zip) 最新的代码并解压，将 PPSnapshotKit->Source 中的文件拖入您的项目中即可

   

2. CocoaPods 安装：

   修改你的 `PodFile` 并添加以下依赖项：

   ```
   pod 'PPSnapshotKit'
   ```

   

### 使用

直接在需要截图的 View 上调用：

```objective-c
PPSnapshotHandler.defaultHandler.delegate = self;
[PPSnapshotHandler.defaultHandler snapshotForView:viewToCapture];
```

截图完成得到回调可以获取到 `UIImage` 类型的截图：

```
snapshotHandler:didFinish:forView:
```



Enjoy it ~