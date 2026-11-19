# Love100 恋爱纪念网站（含本地回忆照片管理后台）

## 文件说明
- `love_100_days.html`：给对象访问的纪念网站。
- `admin.html`：只在你自己的电脑上使用的本地照片管理页面。
- `memories.json`：照片清单，由管理后台自动更新。
- `images/memories/`：管理后台保存的照片目录。

## 首次使用管理后台（Windows）
1. 将整个项目文件夹解压到电脑上。
2. 安装 Python 3（如果电脑已经安装，可跳过）。
3. 双击 `启动本地管理后台.bat`。
4. 在浏览器打开 `http://localhost:8000/admin.html`。
5. 点击“选择网站项目文件夹”，选中包含 `love_100_days.html` 的项目根目录。
6. 填写日期和描述，选择一张照片，点击保存。

管理后台会自动生成 `memory_001.jpg`、`memory_002.png` 等文件名，并更新根目录的 `memories.json`。日期可留空；留空时显示“日期待补充”，并排在相册最后。

## 发布给对象
每次添加照片后，把以下内容一起提交并推送到 GitHub：
- `love_100_days.html`
- `memories.json`
- `images/memories/` 目录中的新增图片

等待 GitHub Pages 部署完成后，对方刷新网站即可看到相同照片。

## 重要说明
- 管理后台使用浏览器的 File System Access API，需要最新版 Chrome 或 Edge。
- 请通过 `http://localhost` 打开管理后台，不要直接双击 `admin.html`。
- 浏览器会要求你授权访问项目文件夹；照片只写入你选择的本地项目目录。
- GitHub Pages 是静态网站。管理后台保存到本地后，不会自动推送 GitHub；仍需使用 GitHub Desktop 或 git 提交、推送。
- 网站仓库和图片地址是公开可访问的，请勿上传不希望公开的隐私照片。
- 原始 HTML 的首页花束 Base64 图片已保留。
