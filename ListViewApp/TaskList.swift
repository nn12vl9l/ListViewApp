//
//  TaskList.swift
//  ListViewApp
//
//  Created by 小倉瑞希 on 2021/10/31.
//

import Foundation
import Combine

struct Task : Identifiable {
    var id = ""
    var taskItem = ""
}

class TaskList: ObservableObject {
    @Published var tasks: [Task] = []
}


