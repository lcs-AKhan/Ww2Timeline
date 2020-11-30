//
//  ContentView.swift
//  Ww2Timeline
//
//  Created by Abdul Ahad Khan on 2020-11-30.
//

import SwiftUI

struct ContentView: View {
    
    @State private var yearChosen = 0
    let years = ["1939","1940","1941","1942","1943", "1944","1945"]
    
    @State private var eventChosen1939 = 0
    let events1939 = ["Canada Declares War","Conscription In Canada"]
    
    @State private var eventChosen1941 = 0
    let events1941 = ["Battle of Hong Kong"]
    
    @State private var eventChosen1942 = 0
    let events1942 = ["Dieppe Raid"]
    
    @State private var eventChosen1943 = 0
    let events1943 = ["Invasion of Sicily","Battle of Ortona"]
    
    var body: some View {
        NavigationView() {
            Form {
                Section(header: Text("Choose year")) {
                    Picker("Year of Ww2", selection: $yearChosen) {
                        ForEach(0..<years.count) {
                            Text("\(self.years[$0])")
                        }
                    }
                    if yearChosen == 0 {
                        Picker("Events", selection: $eventChosen1939) {
                            ForEach(0..<events1939.count) {
                                Text("\(self.events1939[$0])")
                            }
                        }
                    } else if yearChosen == 2 {
                        Picker("Events", selection: $eventChosen1941) {
                            ForEach(0..<events1941.count) {
                                Text("\(self.events1941[$0])")
                            }
                        }
                    } else if yearChosen == 3 {
                        Picker("Events", selection: $eventChosen1942) {
                            ForEach(0..<events1942.count) {
                                Text("\(self.events1942[$0])")
                            }
                        }
                    } else if yearChosen == 4 {
                        Picker("Events", selection: $eventChosen1943) {
                            ForEach(0..<events1943.count) {
                                Text("\(self.events1943[$0])")
                            }
                        }
                    }
                }
                if yearChosen == 0 {
                    Section() {
                        if eventChosen1939 == 0 {
                            Text("September 10, 1939")
                            Text("Canada officially declares war on Germany. This is the first time Canada has declared war on another country as an independent country. Of course, none of the Canadians were looking forward to having another large war.")
                                .padding(.vertical)
                            Image("CanadaDeclaresWar")
                                .resizable()
                                .scaledToFit()
                        } else if eventChosen1939 == 1 {
                            Text("September 14, 1939")
                            Text("After the outrage of French Canadians during WW1, the Prime Minister of Canada (WIlliam Lyon Mackenzie King) pledges to Canadian citizens that he won’t institute conscription. King believes that Canada should be a supply of soldiers to the Allies.")
                                .padding(.vertical)
                            Image("ConscriptionWw2")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                }
                if yearChosen == 2 {
                    Section() {
                        if eventChosen1941 == 0 {
                            Text("November - December, 1941")
                            Text("While defending the British colony of Hong Kong, the 1975 Canadians engaged in a battle against the Japanese. On December 25, Hong Kong fell along with 290 Canadian soldiers who were killed. The rest of the Canadians were captured.")
                            Image("HongKongWw2")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                }
                if yearChosen == 3 {
                    Section() {
                        if eventChosen1942 == 0 {
                            Text("August 19, 1942")
                            Text("Canadians execute Operation Jubilee to take control of the fishing port of Dieppe. Out of the 5000 Canadians that landed, 916 would lose their lives and 1946 would become prisoners. Even though this raid proved to be a failure, it was a lesson learned that would help in a more significant amphibious operation further in the war.")
                            Image("Dieppe")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                }
                if yearChosen == 4 {
                    Section() {
                        if eventChosen1943 == 0 {
                            Text("July - August, 1943")
                            Text("As part of the Italian campaign, Canadians launched Operation Husky and invaded the Italian region of Sicily. It was a large amphibious and airborne raid, followed by a 6 week campaign across land. 552 Canadians were killed out of the 3000 ships that sailed to Sicily. However, this battle contributed to the fall of Mussolini.")
                            Image("SicilyBattle")
                                .resizable()
                                .scaledToFit()
                        } else if eventChosen1943 == 1 {
                            Text("December 28, 1943")
                            Text("Part of the Allies advance through Italy, Canadians fought one of their toughest battles in Ww2 at the east coast city of Ortona. The city was held by German troops, and the mission was to liberate the city. Here they used mouseholing tactics to eventually get the Germans to retreat. 500 Canadians died, but in the end the battle was won and Ortona was liberated.")
                            Image("OrtonaBattle")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                }
            }
            .navigationBarTitle("Ww2 Timeline")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
