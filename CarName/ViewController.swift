//
//  ViewController.swift
//  CarName
//
//  Created by WonDongHyun on 2022/08/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        
    Quote(contents: "코나", name: "현대"),
    Quote(contents: "소나타", name: "현대"),
    Quote(contents: "베뉴", name: "현대"),
    Quote(contents: "타이칸", name: "포르쉐"),
    Quote(contents: "무르시엘라고", name: "람보르기니")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tabButton(_ sender: UIButton) {
        
        let random = Int(arc4random_uniform(5)) // 0에서 4 사이의 난수를 쏴줌
        
        
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
    
}

