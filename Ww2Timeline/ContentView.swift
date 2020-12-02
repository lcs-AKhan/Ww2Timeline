//
//  ContentView.swift
//  Ww2Timeline
//
//  Created by Abdul Ahad Khan on 2020-11-30.
//

import SwiftUI

    let years = ["1939","1940","1941","1942","1943","1944","1945"]
        
    let events1939 = ["Canada Declares War","Conscription In Canada"]
    
    let events1941 = ["Battle of Hong Kong"]
    
    let events1942 = ["Dieppe Raid"]
    
    let events1943 = ["Invasion of Sicily","Battle of Ortona"]
    
    let events1944 = ["Liri Valley","D-Day"]
    
    let events1945 = ["Liberation of Netherlands","V-E Day","V-J Day"]
    
    struct Child: Identifiable {
        var id = UUID()         // Generate a unique identifier for an instance of this type
        var name: String
        var description: String
        var imageName: String
    }

    struct Parent {
        var name: String
        var children: [Child]
    }

    struct ContentView: View {
        
        // All top level options
        var topLevelOptions = [
            Parent(name: "1939", children: [
                
                Child(name: "Hitler Invades Poland",
                      description: "Some explanatory information about option 1c",
                      imageName: "image1c"),
                Child(name: "Canada Declares War",
                      description: "",
                      imageName: ""),
                Child(name: "Conscription In Canada",
                      description: "Some explanatory information about option 1b",
                      imageName: "image1b"),

            ]),
            Parent(name: "1940", children: [

                Child(name: "German Invasion of the West",
                      description: "Some explanatory information about option 2a",
                      imageName: "image2a"),

            ]),
            Parent(name: "1941", children: [

                Child(name: "Battle of Hong Kong",
                      description: "Some explanatory information about option 3a",
                      imageName: "image3a"),
                Child(name: "Bombing of Pearl Harbor",
                      description: "Some explanatory information about option 3b",
                      imageName: "image3b"),

            ]),
            Parent(name: "1942", children: [
                
                Child(name: "Dieppe raid",
                      description: "Some explanatory information about option 3b",
                      imageName: "image3b"),

            ]),
            Parent(name: "1943", children: [
                
                Child(name: "Battle of Sicily",
                      description: "Some explanatory information about option 3b",
                      imageName: "image3b"),
                Child(name: "",
                      description: "Some explanatory information about option 3b",
                      imageName: "image3b"),
            ])
        ]
        
        // Selected top level option
        @State var selectedTopLevelOption = 0
        
        var body: some View {
            
            NavigationView {
                
                Form {
                    
                    Section {
                        
                        Picker("Select a top level option", selection: $selectedTopLevelOption) {
                            
                            ForEach(0 ..< topLevelOptions.count) { index in
                                
                                Text(topLevelOptions[index].name)
                                
                            }
                            
                        }

                    }
                    
                    Section {
                        
                        // Loop over all the children of the selected top level option
                        List(topLevelOptions[selectedTopLevelOption].children) { secondLevelOption in
                            
                            NavigationLink(secondLevelOption.name,
                                           destination: ChildDetailView(child: secondLevelOption))
                            
                        }

                    }
                    
                }
                .navigationTitle("Parent-Child Nav")
            }
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
