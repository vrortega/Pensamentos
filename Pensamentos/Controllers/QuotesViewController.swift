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
    
    let config = Configuration.shared
    
    let quotesManger = QuotesManager()
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formatView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        formatView()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        prepareQuote()
    }
    
    func formatView() {
        view.backgroundColor = config.colorScheme == 0 ? .white : UIColor(red: 156.0/255.0, green: 68.0/255.0, blue: 15.0/255.0, alpha: 1.0)
        quoteLb.textColor = config.colorScheme == 0 ? .black : .white
        authorLb.textColor = config.colorScheme == 0 ? UIColor(red: 192.0/255.0, green: 96.0/255.0, blue: 49.0/255.0, alpha: 1.0) : .yellow
        prepareQuote()
    }
    
    func prepareQuote() {
        timer?.invalidate()
        if config.autorefresh {
            timer = Timer.scheduledTimer(withTimeInterval: config.timeInterval, repeats: true, block: { (timer) in
                self.showRandomQuote()
            })
        }
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
