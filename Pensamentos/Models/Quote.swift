//
//  Quote.swift
//  Pensamentos
//
//  Created by Vitoria Ortega on 05/06/24.
//

import Foundation

struct Quote: Decodable {
    
    let quote: String
    let author: String
    let image: String
    
    var quoteFormatted: String {
        return "" + quote + ""
    }
    
    var authorFormatted: String {
        return "- " + author + "- "
    }
    
}
