//
//  ViewController.swift
//  LocalDBUsingRealm
//
//  Created by Drillmaps on 18/02/23.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(Realm.Configuration.defaultConfiguration.fileURL!)
        //testFunction()
        getValues()
    }
    
    func getValues(){
        do{
            let stocks = realm.objects(StockPrice.self)
            
            print(stocks)
            
            
        }
        catch let error as NSError {
            print("Unable to add values to the DB")
        }
    }
    
    func testFunction(){
        let tsla: StockPrice = StockPrice()
        tsla.symbol = "TSLA"
        tsla.price = 236.12
        tsla.volume = 123234235
        
        let msft: StockPrice = StockPrice()
        msft.symbol = "MSFT"
        msft.price = 235.34
        msft.volume = 4235346456
        
        // Add to the Realm
        do {
            try realm.write {
                realm.add(msft, update: .modified)
            }
        } catch let error as NSError {
            print("Unable to add values to the DB")
        }


        
       
        
    
    }


}

