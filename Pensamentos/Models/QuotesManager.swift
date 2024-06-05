//
//  QuotesManager.swift
//  Pensamentos
//
//  Created by Vitoria Ortega on 05/06/24.
//

import Foundation

class QuotesManager {
   let quotes: [Quote]
   
   init() {
       // Garante que o fileURL não seja nulo
       guard let fileURL = Bundle.main.url(forResource: "quotes", withExtension: "json") else {
           fatalError("Arquivo quotes.json não encontrado.")
       }
       
       do {
           // Inicializa jsonData
           let jsonData = try Data(contentsOf: fileURL)
           let jsonDecoder = JSONDecoder()
           
           // Decodifica as quotes
           quotes = try jsonDecoder.decode([Quote].self, from: jsonData)
       } catch {
           // Lida com qualquer erro durante a decodificação dos dados
           fatalError("Falha ao carregar ou decodificar quotes.json: \(error)")
       }
   }
}
