# 專案指引

## 安裝作業

1. 備妥相關軟體。
   - git
   - Node.js (node, npm, yarn)
   - Markdown-Previewer (instant-markdown-d)
   - Bash Language Server

2. 下載設定檔。

```sh
git clone git@github.com:AlanJui/vim8.git ~/.vim
```

3. 執行軟體。

```sh
vim
```


```
git push -u origin main
```

## 安裝輔助套件

### 安裝 Node.js 作業平台

1. 安裝 n (Node.js) 直譯器版本管理器

   ```sh
    curl -L https://bit.ly/n-install | bash -s -- -y
    ```

2. 重啟 SHELL 設定
   
   ```sh
   source ~/.bashrc
   ```

3. 安裝 Node.js, npm 軟體套件

   ```sh
   n lts
   ```
 
4. 檢驗設定結果

   ```sh
   $ node -v
   v20.10.0


   $ npm -v
   10.2.3
   ```

5. 安裝 yarn 軟體套件
   ```sh
    $ npm install -g yarn
   ```

### 安裝 Markdown 檔案預覽工具

```sh
npm install -g instant-markdown-d
```

### 安裝 Shell Script 用 Language Server

```sh
npm install -g bash-language-server
```
