//
//  ViewController.swift
//  NoticiasMVVM
//
//  Created by Jose David Bustos H on 04-11-20.
//  Copyright © 2020 Jose David Bustos H. All rights reserved.
//

import UIKit

class NoticiasNewViewController: UIViewController {

    var listMenus = [Article]()
    var searching = false
    var searchedMenu =  [Article]()
    
    let searchController = UISearchController(searchResultsController: nil)
    // MARK: - IBOutlets
    lazy var tableView: UITableView = {
        let table: UITableView = .init()
        table.delegate = self
        table.dataSource = self
        table.register(ArticleTableNewViewCell.self, forCellReuseIdentifier: "ArticleTableNewViewCell")
        table.rowHeight = 200.0
        table.separatorColor = UIColor.orange
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    // MARK: - init
    init() {
        super.init(nibName: nil, bundle: nil)
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startloading()
        view.backgroundColor = UIColor.white
        setUpTableView()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Functions
    
    private func setUpTableView() {
         view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant:  35.0).isActive = true
         tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
         tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
         tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
     }
    
    private func startloading(){
        let alert = UIAlertController(title: nil, message: "Please wait...", preferredStyle: .alert)
        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = UIActivityIndicatorView.Style.gray
        loadingIndicator.startAnimating();
        alert.view.addSubview(loadingIndicator)
        self.present(alert, animated: true, completion: nil)
    }
    
    private func stoploading(){
        self.dismiss(animated: false, completion: nil)
    }
}
extension NoticiasNewViewController:  UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
}
