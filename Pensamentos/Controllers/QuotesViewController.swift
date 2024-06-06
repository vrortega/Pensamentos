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
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prepareQuote()
    }
    
    func prepareQuote() {
        
    }

}
