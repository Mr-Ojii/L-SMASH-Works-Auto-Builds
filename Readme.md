# L-SMASH-Works-Auto-Builds

## en
This is an unofficial build of the master branch of L-SMASH Works for [VFR-maniac version](https://github.com/VFR-maniac/L-SMASH-Works) and [Mr-Ojii version](https://github.com/Mr-Ojii/L-SMASH-Works).

The L-SMASH library uses the [Mr-Ojii version](https://github.com/Mr-Ojii/l-smash.git) and [vimeo version](https://github.com/vimeo/l-smash.git).

As of 2024/08/24, only builds for the following are supported.
- AviUtl
- AviUtl ExEdit2 (Mr-Ojii version LSW only)

Translated by DeepL

## ja
[VFR-maniac氏版](https://github.com/VFR-maniac/L-SMASH-Works)と[Mr-Ojii版](https://github.com/Mr-Ojii/L-SMASH-Works)のL-SMASH Worksのmasterブランチの非公式ビルドです。

L-SMASHのライブラリは[Mr-Ojii版](https://github.com/Mr-Ojii/l-smash.git)と[vimeo版](https://github.com/vimeo/l-smash.git)を使用しています。

2025/08/24 現在、以下のプラグインのビルドのみ対応しています。
### 無印AviUtl
#### おすすめ導入方法
1. Releases ページより、おすすめとされている .zip をダウンロード
2. zip ファイルを解凍
3. zipを解凍したフォルダ内の `AviUtl` フォルダ内の `lwcolor.auc, lwdumper.auf, lwinput.aui, lwinput64.aui, lwmuxer.auf` を `<aviutl.exeのフォルダ>/plugins` に配置
4. AviUtl を起動し、`ファイル`→`環境設定`→`入力プラグイン優先度の設定`に`L-SMASH Works File Reader`が追加されていることを確認
5. 確認ができたら導入完了です。確認ができない場合、zip のダウンロード不良の可能性があるため、手順1からやり直してください。

### AviUtl ExEdit2 (Mr-Ojii版 LSW のみ)
#### おすすめ導入方法
1. Releases ページより、おすすめとされている .zip をダウンロード
2. zip ファイルを解凍
3. zipを解凍したフォルダ内の `AviUtl2` フォルダ内の `lwinput.aui2` を `C:\ProgramData\aviutl2\Plugin` に配置  
  ※「lwinput.aui**2**」 である必要があります。確認してください。
4. AviUtl ExEdit2 を起動し、`設定`→`入力プラグインの設定`に`L-SMASH Works File Reader for AviUtl2`が追加されていることを確認  
  ※「L-SMASH Works File Reader **for AviUtl2**」 である必要があります。 `for AviUtl2` の表記がない場合、誤って無印版を導入しているため、正常に動作しない可能性があります。
5. 確認ができたら導入完了です。確認ができない場合、zip のダウンロード不良の可能性があるため、手順1からやり直してください。
6. これは必須ではありませんが、`L-SMASH Works File Reader for AviUtl2` に `.mp4` や `.mov` を読み込ませたい場合、`Media Foundation file reader` より優先度を高くしてください。
