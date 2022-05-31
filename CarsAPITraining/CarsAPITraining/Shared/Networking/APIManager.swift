//
//  APIManager.swift
//  CarsAPITraining
//
//  Created by Francisco Tomas Nasich on 28/05/2022.
//

import Foundation
import UIKit

class APIManager{
    public static var shared = APIManager()
    let url = URL(string: "https://demo7142260.mockable.io/cars")!
    
    func getCars(onSuccess: @escaping ([Car]) -> ()) {
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: { data, _, error in
            if let data = data {
                let decoder = JSONDecoder()
                do {
                    let cars = try decoder.decode([Car].self, from: data)
                    onSuccess(cars)
                }
                catch {
                    print(error.localizedDescription)
                }
            } else if let error = error {
                print("Error: \(error)")
            }
        })
        task.resume()
     }
    }

   
