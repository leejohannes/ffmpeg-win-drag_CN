# 自己常用的一些ffmpeg拖拽文件罢了
生成字幕是用的 https://github.com/m1guelpf/auto-subtitle<p>
具体`ffmpeg`和`auto-subtitle`得去改地址<p>
我用的是 格式工厂 内的ffmpeg 又有些时候用的是 https://github.com/BtbN/FFmpeg-Builds/releases<p>
放在`F:\ProgramData\ffmpeg\ffmpeg.exe` <p>
这些都得您自己改成自己电脑里的<p>
同时字幕生成参考这里 https://iheld.net/post-256.html <p>
在`config.txt`中设置`ffmpeg`和`auto-subtitle`的路径
添加了[tesseract-ocrt](https://github.com/UB-Mannheim/tesseract)

---
如果去i盘找文件了。。。因为windows 最新版find修改了。。。实际上需要的是findstr功能，将读取config.txt中的find /i改成findstr就好了。。。
