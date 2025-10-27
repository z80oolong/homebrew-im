# z80oolong/im -- 各種インプットメソッドをインストールするための Formula 群

## 概要

[Homebrew for Linux][BREW] は、Linux ディストリビューション向けのソースコードベースのパッケージ管理システムであり、ソフトウェアのビルドおよびインストールを簡素化します。

この [Homebrew for Linux][BREW] 向け Tap リポジトリ ```z80oolong/im``` は、[fcitx5][FCI5] および [scim][SCIM] のインプットメソッドのクライアントライブラリ、および [GTK+3][DGTK] のフロントエンドをインストールするための Formula 群を提供します。

対応するインプットメソッドおよび Formula の詳細は、本リポジトリに同梱の ```FormulaList.md``` を参照してください。

## 使用方法

[Homebrew for Linux][BREW] を以下の参考資料に基づいてインストールします：

- [thermes 氏][THER] の Qiita 投稿 "[Linuxbrew のススメ][THBR]"
- [Homebrew for Linux 公式ページ][BREW]

本リポジトリの Formula を以下のようにインストールします：

```
  brew tap z80oolong/im
  brew install <formula>
```

または、一時的な方法として、以下のように URL を直接指定してインストール可能です：

```
  brew install https://raw.githubusercontent.com/z80oolong/homebrew-im/master/Formula/<formula>.rb
```

利用可能な Formula の一覧および詳細は、本リポジトリに同梱の ```FormulaList.md``` を参照してください。

## 詳細情報

本リポジトリおよび [Homebrew for Linux][BREW] の使用方法の詳細は、以下のコマンドやリソースを参照してください：

- ```brew help``` コマンド
- ```man brew``` コマンド
- [Homebrew for Linux 公式ページ][BREW]

## 謝辞

本リポジトリの作成にあたり、[fcitx5][FCI5] および [scim][SCIM] の開発者コミュニティに深く感謝いたします。また、[GTK+3][DGTK] の開発者および関連するすべての皆様に心より感謝申し上げます。

[Homebrew for Linux][BREW] の導入については、[Homebrew for Linux 公式ページ][BREW] および [thermes 氏][THER] の Qiita 投稿 "[Linuxbrew のススメ][THBR]" を参考にしました。[Homebrew for Linux 開発コミュニティ][BREW] および [thermes 氏][THER] に感謝いたします。

## 使用条件

本リポジトリは、[Homebrew for Linux][BREW] の Tap リポジトリとして、[Homebrew for Linux 開発コミュニティ][BREW] および [Z.OOL.][ZOOL] が著作権を有します。本リポジトリは、[BSD 2-Clause License][BSD2] に基づいて配布されます。詳細は本リポジトリに同梱の ```LICENSE``` を参照してください。

<!-- 外部リンク一覧 -->

[BREW]: https://linuxbrew.sh/
[FCI5]: https://fcitx-im.org/wiki/Fcitx_5
[SCIM]: https://github.com/scim-im/scim
[DGTK]: https://gtk.org/
[THER]: https://qiita.com/thermes
[THBR]: https://qiita.com/thermes/items/926b478ff6e3758ecfea
[BSD2]: https://opensource.org/licenses/BSD-2-Clause
[ZOOL]: http://zool.jpn.org/
