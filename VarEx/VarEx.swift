//
//  VarEx.swift
//  VarEx
//
//  Created by HIROYUKI SHIRAKAZU on 2016/04/19.
//  Copyright © 2016年 HIROYUKI SHIRAKAZU. All rights reserved.
//

import UIKit

// let は定義
// var 変数

//ソースを書いた後はMain.storyboardでclassの設定をしてあげる必要がある。これをしないと画面に出力されない。

//変数
class VarEx: UIView {
    //描写時に呼ばれる
    override func drawRect(rect: CGRect) {
        var num0: Int //数値0
        var num1: Int //数値1
        var sum: Int //合計
        
        num0 = 100 //数値0に100を代入
        num1 = 200 //数値1に200を代入
        sum = num0 + num1 //数値0 + 数値1を計算結果に代入
        
        //文字列の生成
        let str: String = "合計 = \(sum)"
        print("変数sum = \(sum)")
        //文字列の描写
        
        drawString(str, x: 0, y: 20)
        
        
    }
    //文字列の描写
    func drawString(str: String, x: Int, y: Int){
        let attrs = [NSFontAttributeName: UIFont.systemFontOfSize(24)]
        str.drawAtPoint(CGPointMake(CGFloat(x), CGFloat(y)),withAttributes: attrs)
        
    }
}