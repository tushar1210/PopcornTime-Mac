//
//  MenuViewController.swift
//  PopcornTime-Mac
//
//  Created by Aritro Paul on 06/07/20.
//  Copyright © 2020 Aritro Paul. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {
    
    var moviesVC = MoviesViewController.instantiate(from: .main)
    var showsVC = ShowsViewController.instantiate(from: .main)
    
    var selectedIndex = 0
    
    var viewControllers = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [moviesVC, showsVC]
        
        if let navVC = self.parent as? UINavigationController {
            if let splitVC = navVC.parent as? UISplitViewController {
                if let detailVC = splitVC.children[1] as? UINavigationController {
                    detailVC.viewControllers = [UIViewController()]
                    detailVC.viewControllers[0].title = ""
                }
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.tableView(tableView, didSelectRowAt: IndexPath(row: selectedIndex, section: 0))
        tableView.selectRow(at: IndexPath(row: selectedIndex, section: 0), animated: true, scrollPosition: .none)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.backgroundColor = .tertiarySystemFill
        selectedIndex = indexPath.row
        if let navVC = self.parent as? UINavigationController {
            if let splitVC = navVC.parent as? UISplitViewController {
                if let detailVC = splitVC.children[1] as? UINavigationController {
                    if indexPath.row < viewControllers.count {
                        detailVC.viewControllers = [viewControllers[indexPath.row]]
                        detailVC.viewControllers[0].title = cell?.textLabel?.text
                    }
                }
                
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.backgroundColor =
            .systemGroupedBackground
    }
    
}
