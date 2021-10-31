//
//  ContentView.swift
//  ListViewApp
//
//  Created by 小倉瑞希 on 2021/10/31.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @ObservedObject var nameList = NameList()
    @ObservedObject var taskList = TaskList()
    @State var newTask: String = ""
    
    var addTaskBar: some View {
        HStack {
            TextField("追加してください", text: self.$newTask)
            Button(action: self.addNewTask, label: {Text("追加")})
        }
    }
    
    func addNewTask() {
        taskList.tasks.append(Task(id: String(taskList.tasks.count + 1),taskItem: newTask))
        self.newTask = ""
    }
    
    
    var body: some View {
        NavigationView {
            VStack {
                addTaskBar.padding()
                List {
                    ForEach(self.taskList.tasks) { task in
                        Text(task.taskItem)
                    }
                }
            }.navigationTitle("Taskリスト")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
