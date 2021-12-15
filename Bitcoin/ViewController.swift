//
//  ViewController.swift
//  Bitcoin
//
//  Created by Ulises M on 15/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultado: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
        
        
        
       
   
    @IBAction func botonmc(_ sender: Any) {
        
        
    
        let urlmxn = "https://rest.coinapi.io/v1/exchangerate/BTC/MXN/?apikey=762DEF17-B7CD-49B7-96EC-57D995E9E339  "
        getdata(from: urlmxn)
    
        
        func getdata(from url:  String) {
           
            let task =  URLSession.shared.dataTask(with: URL(string: url)!, completionHandler:  { data, response, error in
            
                guard let data = data, error == nil else {
                print("Datos no cargados")
                return
            }
                
                var resultado: Response?
                
                do {
                    resultado = try JSONDecoder().decode(Response.self, from: data)
                }
                catch{
                    print("error")
                }
                
                guard let json =  resultado else {
                    return
                }
                
                print(json.status)
    //            print(json.Resultado.time)
    //            print(json.Resultado.base)
    //            print(json.Resultado.quote)
                print(json.Resultado.rate)
            
            })
                task.resume()
                  
            
        }
    }
    
    @IBAction func botonusa(_ sender: Any) {
        
        let urlusa = "https://rest.coinapi.io/v1/exchangerate/BTC/USD/?apikey=762DEF17-B7CD-49B7-96EC-57D995E9E339  "
        getdata(from: urlusa)
        
        func getdata(from url:  String) {
           
            let task =  URLSession.shared.dataTask(with: URL(string: url)!, completionHandler:  { data, response, error in
            
                guard let data = data, error == nil else {
                print("Datos no cargados")
                return
            }
                
                var resultado: Response?
                
                do {
                    resultado = try JSONDecoder().decode(Response.self, from: data)
                }
                catch{
                    print("error")
                }
                
                guard let json =  resultado else {
                    return
                }
                
                print(json.status)
    //            print(json.Resultado.time)
    //            print(json.Resultado.base)
    //            print(json.Resultado.quote)
                print(json.Resultado.rate)
            
            })
                task.resume()
                  
            
        }
        
    }
    
    @IBAction func botoneuros(_ sender: Any) {
        let urleuro = "https://rest.coinapi.io/v1/exchangerate/BTC/EUR/?apikey=762DEF17-B7CD-49B7-96EC-57D995E9E339"
        
        
        
        func getdata(from url:  String) {
           
            let task =  URLSession.shared.dataTask(with: URL(string: url)!, completionHandler:  { data, response, error in
            
                guard let data = data, error == nil else {
                print("Datos no cargados")
                return
            }
                
                var resultado: Response?
                
                do {
                    resultado = try JSONDecoder().decode(Response.self, from: data)
                }
                catch{
                    print("error")
                }
                
                guard let json =  resultado else {
                    return
                }
                
                print(json.status)
    //            print(json.Resultado.time)
    //            print(json.Resultado.base)
    //            print(json.Resultado.quote)
                print(json.Resultado.rate)
                
               
            
            })
                task.resume()
                  
            
        }
    }
    
    
    
    
    
    
    
    struct Response: Codable {
        let Resultado: Resultsmxn
        let status: String
        
    }
    
    
    struct Resultsmxn: Codable {
//        let time: String
//        let base: String
//        let quote: String
        let rate: String
    }
    
    
    


}
