//
//  ViewController.swift
//  ios-uikit-uipastedboard-demo
//
//  Created by Kushida　Eiji on 2017/02/22.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    /// 全アプリ共通のPasteboard
    var pasteboard: UIPasteboard?
    /// 本アプリ固有のPasteboard
    var appPasteboard: UIPasteboard?
    
    // MARK: - life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppPasteboard()
        checkPasteboardDataTypes()
    }
    
    // MARK: - actions
    
    /// ボタンを押下すると、クリップボードにコピーする
    @IBAction func didTapClipBoard(_ sender: UIButton) {
        copyText(text: "テストです。")
    }
    
    /// ボタンを押下すると、クリップボードにコピーされた文字列をペーストする
    @IBAction func didTapPaste(_ sender: UIButton) {
        pasteText()
    }
    
    @IBAction func didTapImageClipBoard(_ sender: Any) {
        copyImage(img: #imageLiteral(resourceName: "cat"))
    }
    
    @IBAction func didTapImagePaste(_ sender: Any) {
        pasteImage()
    }
    
    @IBAction func didTapURLClipBoard(_ sender: Any) {
        let theURL = URL(string: "https://www.google.com")!
        copyURL(url: theURL)
    }
    
    @IBAction func didTapURLPaste(_ sender: Any) {
        pasteURL()
    }
    
    @IBAction func didTapColorClipBoard(_ sender: Any) {
        copyColor(color: #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1))
    }
    
    @IBAction func didTapColorPaste(_ sender: Any) {
        pasteColor()
    }
    
    // MARK: - UIPasteboard methods

    /// クリップボードのインスタンスを生成する
    private func setup() {
        pasteboard = UIPasteboard.general
    }
    
    /// 本アプリ固有のPasteboardのインスタンスを生成する
    private func setupAppPasteboard() {
        appPasteboard = UIPasteboard.withUniqueName()
    }
    
    ///　文字列をコピーする
    private func copyText(text: String) {
        appPasteboard?.string = text
    }
    
    /// 文字列をペーストする
    private func pasteText() {
        if let text = appPasteboard?.string {
            print(text)
        }
    }
    
    ///　画像をコピーする
    private func copyImage(img: UIImage) {
        appPasteboard?.image = img
    }
    
    /// 画像をペーストする
    private func pasteImage() {
        if let img = appPasteboard?.image {
            print(img)
        }
    }
    
    ///　urlをコピーする
    private func copyURL(url: URL) {
        appPasteboard?.url = url
    }
    
    /// urlをペーストする
    private func pasteURL() {
        if let url = appPasteboard?.url {
            print(url)
        }
    }
    
    ///　色をコピーする
    private func copyColor(color: UIColor) {
        appPasteboard?.color = color
    }
    
    /// 色をペーストする
    private func pasteColor() {
        if let color = appPasteboard?.color {
            // backgroundColorに使用する
            self.view.backgroundColor = color
        }
    }
    
    /// ペーストボード上のデータ型をチェックする
    private func checkPasteboardDataTypes() {
        
        appPasteboard?.string = "text"
        appPasteboard?.url = URL(string: "https://www.google.com")
        appPasteboard?.image = #imageLiteral(resourceName: "cat")
        appPasteboard?.color = UIColor.red
        
        // iOS10以上はペーストボード上のデータ型をチェックすることが可能
        if #available(iOS 10.0, *) {
            if appPasteboard?.hasStrings == true {
                print("Pasteboard has Strings.")
            }
            if appPasteboard?.hasURLs == true {
                print("Pasteboard has URLs.")
            }
            if appPasteboard?.hasImages == true {
                print("Pasteboard has images.")
            }
            if appPasteboard?.hasColors == true {
                print("Pasteboard has colors.")
            }
        }
    }
}

