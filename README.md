# UIPasteBoard
## 概要
UIPasteBoardは、文字列や画像などをコピー＆ペーストするクラスです。<br>例）クリップボードにコピー&ペーストするなど

## 関連クラス
NSObject

## 主要メソッド

| メソッド名 | 説明 | サンプル |
|:-----------:|:------------:|:------------|
| setValue | 文字列または画像をペーストボードにコピーする | pasteboard?.setValue(text, forPasteboardType: PasteBoardKey.text) |
| value | 文字列または画像をペーストボードにペーストする | let text = pasteboard?.value(forPasteboardType: PasteBoardKey.text) as! String |

## 主要プロパティ

| プロパティ名 | 説明 | サンプル | 備考 |
|:-----------:|:------------:|:------------|:------------:|
| hasStrings | ペーストボードにテキストがあるか<br>チェックする | if pasteboard?.hasStrings == true { <br>    print("Pasteboard has Strings.") <br>} |iOS 10.0以上|
| hasURLs | ペーストボードにURLがあるか<br>チェックする | if pasteboard?.hasURLs == true { <br>    print("Pasteboard has URLs.") <br>} |iOS 10.0以上|
| hasImages | ペーストボードに画像があるか<br>チェックする | if pasteboard?.hasImages == true { <br>    print("Pasteboard has images.") <br>} |iOS 10.0以上|
| hasColors | ペーストボードにカラーデータがあるか<br>チェックする | if pasteboard?.hasColors == true { <br>    print("Pasteboard has colors.") <br>} |iOS 10.0以上|

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/uikit/uipasteboard
