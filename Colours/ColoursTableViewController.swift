//
//  ColoursTableViewController.swift
//  Colours
//
//  Created by guhan-pt6208 on 30/11/22.
//

import UIKit

class ColoursTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var colours = [UIColor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addColours()
        // Do any additional setup after loading the view.
    }
    
    func addColours() {
        for _ in 0..<50 {
            colours.append(getRandomColour())
        }
    }
    
    func getRandomColour() -> UIColor {
        let colour = UIColor(red: CGFloat.random(in: 0...1.0), green: CGFloat.random(in: 0...1.0), blue: CGFloat.random(in: 0...1.0), alpha: 1)
        return colour
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ColoursDetailVC
        destinationVC.colour = sender as? UIColor
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colours.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColourCell") else {
            return UITableViewCell()
        }
        cell.backgroundColor = colours[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let colour = colours[indexPath.row]
        performSegue(withIdentifier: "ToColoursDetailVC", sender: colour)
    }

}
