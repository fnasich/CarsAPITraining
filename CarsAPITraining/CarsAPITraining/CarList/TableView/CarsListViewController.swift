//
//  CarsListViewController.swift
//  CarsAPITraining
//
//  Created by Francisco Tomas Nasich on 29/05/2022.
//

import UIKit

class CarsListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var carsTableView: UITableView!
    
    var cars: [Car] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Cars"
        self.carsTableView.register(UINib(nibName: "CarsTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        carsTableView.delegate = self
        carsTableView.dataSource = self
        
        APIManager.shared.getCars {car in
            DispatchQueue.main.async {
                self.cars = car
                self.carsTableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.carsTableView.dequeueReusableCell(withIdentifier: "cell") as! CarsTableViewCell
        
        cell.id?.text = self.cars[indexPath.row].id
        cell.name?.text = self.cars[indexPath.row].name
        cell.plate?.text = self.cars[indexPath.row].plate
        cell.des?.text = self.cars[indexPath.row].des
        
        return cell
    }
    
}
