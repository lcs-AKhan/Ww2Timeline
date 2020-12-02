//
//  ContentView.swift
//  Ww2Timeline
//
//  Created by Abdul Ahad Khan on 2020-11-30.
//

import SwiftUI

    struct Event: Identifiable {
        var id = UUID()
        var name: String
        var date: String
        var description: String
        var imageName: String
    }

    struct Year {
        var name: String
        var children: [Event]
    }

    struct ContentView: View {
        
        // All top level options
        var topLevelOptions = [
            Year(name: "1939", children: [
                
                Event(name: "Hitler Invades Poland",
                      date: "September 1, 1939",
                      description: "Germany invades Poland. As a result Britain and France realize they cannot give more appeasement, so they agree to declare war on Germany. This was the start of WW2, and the start of the Phoney war. Two weeks later, Stalin invades Poland and seizes territory.",
                      imageName: "Hitler"),
                Event(name: "Canada Declares War",
                      date: "September 10, 1939",
                      description: "Canada officially declares war on Germany. This is the first time Canada has declared war on another country as an independent country. Of course, none of the Canadians were looking forward to having another large war.",
                      imageName: "CanadaDeclaresWar"),
                Event(name: "Conscription In Canada",
                      date: "September 14, 1939",
                      description: "After the outrage of French Canadians during WW1, the Prime Minister of Canada (WIlliam Lyon Mackenzie King) pledges to Canadian citizens that he won’t institute conscription. King pursued “limited liability”, and believed that Canada should supply food and soldiers to the Allies.",
                      imageName: "ConscriptionWw2"),

            ]),
            Year(name: "1940", children: [

                Event(name: "Dunkirk",
                      date: "May - June, 1940",
                      description: "Germany begins invasion of Western Europe. They use blitzkrieg to swiftly take over northern France and then Paris. During this time, British troops at the French city of Dunkirk are surrounded by enemy forces. Instead of dying, they all escape off the shore with the help of the British navy and civilians. Around 338,000 men escaped death, which gave a huge reserve of troops for the Allies.",
                      imageName: "Dunkirk"),

            ]),
            Year(name: "1941", children: [

                Event(name: "Battle of Hong Kong",
                      date: "November - December, 1941",
                      description: "While defending the British colony of Hong Kong, the 1975 Canadians engaged in a battle against the Japanese. On December 25, Hong Kong fell along with 290 Canadian soldiers who were killed. The rest of the Canadians were captured.",
                      imageName: "HongKongWw2"),
                Event(name: "Bombing of Pearl Harbor",
                      date: "December 7, 1941",
                      description: "Japan joins the war and launches a surprise air attack on Pearl Harbor in Hawaii, sending two waves of 360 aircraft to bomb the island. Over 2400 Americans were killed from this event. The US was furious and formally entered the war the next day with the Allies. Hitler, sensing weakness, declares war on America 4 days later.",
                      imageName: "PearlHarbor"),

            ]),
            Year(name: "1942", children: [
                
                Event(name: "Dieppe raid",
                      date: "August 19, 1942",
                      description: "Canadians execute Operation Jubilee to take control of the fishing port of Dieppe. Out of the 5000 Canadians that landed, 916 would lose their lives and 1946 would become prisoners. Even though this raid proved to be a failure, it was a lesson learned that would help in a more significant amphibious operation further in the war.",
                      imageName: "Dieppe"),

            ]),
            Year(name: "1943", children: [
                
                Event(name: "Battle of Sicily",
                      date: "July - August, 1943",
                      description: "As part of the Italian campaign, Canadians launched Operation Husky and invaded the Italian region of Sicily. It was a large amphibious and airborne raid, followed by a 6 week campaign across land. 552 Canadians were killed out of the 3000 ships that sailed to Sicily. However, this battle contributed to the fall of Mussolini.",
                      imageName: "SicilyBattle"),
                Event(name: "Battle of Ortona",
                      date: "December 28, 1943",
                      description: "Part of the Allies advance through Italy, Canadians fought one of their toughest battles in Ww2 at the east coast city of Ortona. The city was held by German troops, and the mission was to liberate the city. Here they used mouseholing tactics to eventually get the Germans to retreat. 500 Canadians died, but in the end the battle was won and Ortona was liberated.",
                      imageName: "OrtonaBattle"),
            ]),
            Year(name: "1944", children: [
                
                Event(name: "Liri Valley",
                      date: "May - June, 1944",
                      description: "Germans still are heavily defending the Liri valley, which leads to the Italian capital of Rome. Canadians are ordered to rid the Liri valleys of Germans. The Canadians hurled themselves at the 2 lines of defense the Germans had. After breaking the first line, the Canadians corps took on the second. They experienced heavy mortar bombing and machine gun fire, but in the end the Canadians pushed the Germans back enough for the Americans to finish them off and take control of Rome. Out of the 50,000 fighting, 5900 died.",
                      imageName: "LiriValley"),
                Event(name: "D-Day",
                      date: "June 6, 1944",
                      description: "The Allies execute Operation Overlord, also commonly known as D-Day. The Canadians were assigned to do an amphibious raid on Juno Beach, and advanced against some of the  best enemy troops. However, they succeeded in the end, but at a great cost. There were almost 360 deaths and 1074 casualties. Fortunately, this battle turned the tide against Hitler, and would be a big step to Allied victory.",
                      imageName: "D-Day"),
                Event(name: "Liberation of Paris",
                      date: "August 25, 1944",
                      description: "American troops enter Paris, joining the Allied fight to liberate the city from German control. On August 25, 1944, after many days of fighting, Germany surrendered Paris to the Allied forces, ending four years of occupation. It significantly pushed back the Germans out of Paris.",
                      imageName: "ParisLiberation"),
                
            ]),
            Year(name: "1945", children: [
                
                Event(name: "V-E Day",
                      date: "May 7, 1945",
                      description: "Soviet troops take over Berlin, causing the suicide of Hitler. Germany surrenders and the war in Europe ends. The next day was declared in history as V-E day, the day when the Canadians would come back from Europe happy and free.",
                      imageName: "V-E"),
                Event(name: "V-J Day",
                      date: "August 15, 1945",
                      description: "Japan surrenders to the Allies after America drops 2 atomic bombs on the cities of Hiroshima and Nagasaki. V-J day is declared and Canadians who were fighting in east Asia return to Canada. It was a very happy day for all Canadians as this marked the official end of Ww2.",
                      imageName: "V-J"),
            ]),
        ]
        
        // Selected top level option
        @State var selectedTopLevelOption = 0
        
        var body: some View {
                            
                NavigationView {
                    
                        Form {
                            
                            Section {
                                
                                Picker("Selected Year:", selection: $selectedTopLevelOption) {
                                    
                                    ForEach(0 ..< topLevelOptions.count) { index in
                                        
                                        Text(verbatim: topLevelOptions[index].name)
                                        
                                    }
                                    
                                }

                            }
                            
                            Section(header: Text("Events In This Year")) {
                                
                                // Loop over all the children of the selected top level option
                                List(topLevelOptions[selectedTopLevelOption].children) { secondLevelOption in
                                    
                                    NavigationLink(secondLevelOption.name,
                                                   destination: ChildDetailView(event: secondLevelOption))
                                    
                                }

                            }
                            Image("WW2")
                                .resizable()
                                .scaledToFit()
                        }
                        .navigationTitle("WW2 Timeline")
                    }
            }
        }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
