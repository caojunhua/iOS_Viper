//
//  JHHomeTableView.swift
//  myViper
//
//  Created by cao hua on 2023/8/3.
//

import UIKit

class JHHomeTableView: UIView {
    typealias didClickCellClosure = (_ model: JHChannelModel) -> Void
    public var didClickCellHandler: didClickCellClosure?
    
    private var tableView: UITableView = UITableView()
    private var dataSource = JHChannelModelArray()
    private let serialQueue = DispatchQueue(label: "com.JHHomeTableView")
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public func setData(data: JHChannelModelArray) {
        self.dataSource = data
        reloadView()
    }
    
    public func reloadView() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    private func setUI() {
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
        self.addSubview(self.tableView)
    }
}

extension JHHomeTableView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = self.dataSource.array[indexPath.row]
        self.didClickCellHandler?(model)
    }
}

extension JHHomeTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("self.dataSource.array.count = \(self.dataSource.array.count)")
        return self.dataSource.array.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = self.dataSource.array[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
//        cell.selectionStyle = .none
        cell.textLabel?.text = model.name
        
        return UITableViewCell()
    }
    
}

