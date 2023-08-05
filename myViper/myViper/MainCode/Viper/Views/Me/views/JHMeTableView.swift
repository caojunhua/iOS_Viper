//
//  JHMeTableView.swift
//  myViper
//
//  Created by cao hua on 2023/8/3.
//

import UIKit

class JHMeTableView: UIView {
  public var tableView: UITableView = UITableView()
  private var dataSource = [String]()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setUI()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  
  private func setUI() {
    
  }
}

extension JHMeTableView: UITableViewDelegate {
  
}

extension JHMeTableView: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    3
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return UITableViewCell()
  }
  
}

