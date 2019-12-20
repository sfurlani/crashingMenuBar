//
//  FirstViewController.swift
//  CrashingMenuBar
//
//  Created by Stephen Furlani on 12/20/19.
//  Copyright © 2019 Stephen Furlani. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath)

        cell.textLabel?.text = "Row \(indexPath.row)"

        return cell
    }

}

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        configureMenu()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // simulate calling this multiple times after different callbacks because we didn't write this with dispatch groups >:(
        configureMenu()

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            self?.configureMenu()
        }
    }

    // Pretend this gets called multiple times
    func configureMenu() {
        // clear
//        self.navigationItem.rightBarButtonItems = nil

        // Add items each time If some data is available - assume for this demo that data is available
        let items = [UIBarButtonItem(image: #imageLiteral(resourceName: "more"), style: .plain, target: self, action: #selector(addTapped(sender:)))]
        self.navigationItem.setRightBarButtonItems(items, animated: true)
    }


    @objc func addTapped(sender: Any) {
        let controller = UIAlertController(title: "bob", message: "message", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "Nothing", style: .default)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        controller.addAction(action)
        controller.addAction(cancel)

        present(controller, animated: true)
    }

}


class SubdetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        configureMenu()
    }

    // I don't think this gets called multiple times on the subdetail
    func configureMenu() {
        // clear
        self.navigationItem.rightBarButtonItems = nil

        // Add items each time If some data is available - assume for this demo that data is available
        let items = [UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped(sender:)))]
        self.navigationItem.rightBarButtonItems = items
    }


    @objc func addTapped(sender: Any) {
        let controller = UIAlertController(title: "bob", message: "message", preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "Nothing", style: .default)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        controller.addAction(action)
        controller.addAction(cancel)

        present(controller, animated: true)
    }

}
