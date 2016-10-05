//
//  TableViewController.swift
//  TableViewFunTime
//
//  Created by James Campagno on 6/15/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var favoriteSongs: [String] = []
    var favoriteIceCreams: [String] = []
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        generateFavoriteSongs()
        generateFavoriteIceCreams()
    }
    
    func generateFavoriteSongs() {

        favoriteSongs = [
            "Thriller",
            "Never Gonna Give You Up",
            "Safety Dance",
            "Space Oddity",
            "Smells Like Teen Spirit",
            "Jealous Guy",
            "Jolene",
            "Moondance",
            "Stairway To Heaven",
            "One",
            "Life On Mars?",
            "Bohemian Rhapsody"
        ]
    }
    
    func generateFavoriteIceCreams() {
        
        favoriteIceCreams = [
            "Cookie Dough",
            "Butter Pecan",
            "Caramel Swirls"
        ]
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return section == 0 ? favoriteSongs.count : favoriteIceCreams.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        
        let pathSection = (indexPath as NSIndexPath).section
        
        var cellText = ""
        if pathSection == 0 {
            cellText = favoriteSongs[(indexPath as NSIndexPath).row]
        } else if pathSection == 1 {
            cellText = favoriteIceCreams[(indexPath as NSIndexPath).row]
        }
        cell.textLabel?.text = cellText

        return cell
    }
 

}
