# z80oolong/im に含まれる Formula 一覧

## 概要

本文書では、[Homebrew for Linux][BREW] 向け Tap リポジトリ ```z80oolong/im``` に含まれる Formula 一覧を示します。

この Tap リポジトリは、インプットメソッドのクライアントライブラリを提供し、[MLTerm][MTRM] などのアプリケーションでの日本語入力等を可能にします。各 Formula の詳細については、```brew info <formula>``` コマンドをご覧ください。

## Formula 一覧

### z80oolong/im/im-fcitx@5.1.12

この Formula は、インプットメソッド [fcitx5][FCIT] のクライアントライブラリをインストールします。[MLTerm][MTRM] の fcitx5 のフロントエンド機能等がこの Formula に依存します。

この Formula では、[gtk+3][DGTK] のフロントエンドも同時にインストールされます。Homebrew でインストールした [gtk+3][DGTK] に依存するアプリケーションについて、[gtk+3][DGTK] の日本語入力等に問題が生じた際は、この Formula のインストールを検討してください。

- **注意**:
    - **この Formula は versioned formula のため、keg-only でインストールされます。**

### z80oolong/im/im-scim@1.4.18

この Formula は、インプットメソッド [scim][SCIM] のクライアントライブラリをインストールします。[MLTerm][MTRM] の scim のフロントエンド機能等がこの Formula に依存します。

この Formula では、[gtk+3][DGTK] のフロントエンドも同時にインストールされます。Homebrew でインストールした [gtk+3][DGTK] に依存するアプリケーションについて、[gtk+3][DGTK] の日本語入力等に問題が生じた際は、この Formula のインストールを検討してください。

- **注意**:
    - **この Formula は versioned formula のため、keg-only でインストールされます。**
    - **この Formula によってインストールされる [scim][SCIM] に関しては、動作確認が不完全であることに留意してください。**

<!-- 外部リンク一覧 -->

[BREW]: https://linuxbrew.sh/  
[MTRM]: https://github.com/arakiken/mlterm  
[FCIT]: https://fcitx-im.org/  
[SCIM]: https://github.com/scim-im/scim  
[DGTK]: https://gtk.org/
