# UIPasteBoard
## 概要
UIPasteBoardは、文字列や画像などをコピー＆ペーストするクラスです。<br>例）クリップボードにコピー&ペーストするなど

## 関連クラス
NSObject

## 主要メソッド

| メソッド名 | 説明 | サンプル |
|:-----------:|:------------:|:------------:|
| setValue | 文字列または画像をペーストボードにコピーする | pasteboard?.setValue(text, forPasteboardType: PasteBoardKey.text) |
| value | 文字列または画像をペーストボードにペーストする | let text = pasteboard?.value(forPasteboardType: PasteBoardKey.text) as! String |

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/uikit/uipasteboard
