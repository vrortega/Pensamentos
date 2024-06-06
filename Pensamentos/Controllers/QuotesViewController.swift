//
//  QuotesViewController.swift
//  Pensamentos
//
//  Created by Vitoria Ortega on 05/06/24.
//

import UIKit

class QuotesViewController: UIViewController {

    @IBOutlet weak var imageIv: UIImageView!
    @IBOutlet weak var imageBg: UIImageView!
    @IBOutlet weak var quoteLb: UILabel!
    @IBOutlet weak var authorLb: UILabel!
    
    let quotesManger = QuotesManager()
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prepareQuote()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        prepareQuote()
    }
    
    func prepareQuote() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 8.0, repeats: true, block: { (timer) in
            self.showRandomQuote()
        })
        showRandomQuote()
    }
    
    func showRandomQuote() {
        let quote = quotesManger.getRandomQuote()
        quoteLb.text = quote.quote
        authorLb.text = quote.author
        imageIv.image = UIImage(named: quote.image)
        imageBg.image = imageIv.image
        
        quoteLb.alpha = 0.0
        authorLb.alpha = 0.0
        imageIv.alpha = 0.0
        imageBg.alpha = 0.0
        
        UIView.animate(withDuration: 2.5){
            self.quoteLb.alpha = 1.0
            self.authorLb.alpha = 1.0
            self.imageIv.alpha = 1.0
            self.imageBg.alpha = 0.25
        }
    }
}
