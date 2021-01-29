# alpine image for Chinese

alpine 是最常用的 docker image 之一。[imagefc/alpine](https://hub.docker.com/r/imagefc/alpine) 针对国内环境进行了以下改良：

1. 使用中科大源（repo 文件来自 [ustclug/alpine](https://hub.docker.com/r/ustclug/alpine) 对应版本）；
2. 设置时区为 Asia/Shanghai；

**注意：即使系统时区改变，部分应用时仍会默认使用 GMT 时区，需要在应用中单独设置。**

3. 提供 bash 版本（[imagefc/alpine-bash](https://hub.docker.com/r/imagefc/alpine-bash)），因为 ash 有时不支持一些 bash 语法）。

## TODO
- 增加新版 alpine（目前为 3.12）；
- 增加常用镜像的 alpine 版本。

## Contribute
欢迎各位大佬们加入 imagefc。Issue 和 PR 都是各位对我的支持。

《关于我心血来潮创立了一个组织，没有小姐姐们亲亲抱抱举高高就不知道能维护多久这档事.jpg》