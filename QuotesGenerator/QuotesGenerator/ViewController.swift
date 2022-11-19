//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by Kay on 2022/11/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var generatorButton: UIButton!
    
    let quotes = [
      Quote(content: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다.", name: "벤다이크"),
      Quote(content: "나는 나 자신을 빼 놓고는 모두 안다.", name: "비용"),
      Quote(content: "편견이란 실효성이 없는 의견이다.", name: "암브로스 빌"),
      Quote(content: "분노는 바보들의 가슴속에서만 살아간다.", name: "아인슈타인"),
      Quote(content: "몇 번이라도 좋다! 이 끔찍한 생이여...다시!", name: "니체")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generatorButton.addTarget(self, action: #selector(tapGenerateQuote(_:)), for: .touchUpInside)
    }

    @objc func tapGenerateQuote(_ sender: Any) {
        let randomNumber = Int.random(in: 0..<quotes.count)
        quoteLabel.text = quotes[randomNumber].content
        nameLabel.text = quotes[randomNumber].name
    }
}

