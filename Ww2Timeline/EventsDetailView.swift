//
//  EventsDetailView.swift
//  Ww2Timeline
//
//  Created by Abdul Ahad Khan on 2020-12-02.
//

import SwiftUI

import SwiftUI

struct ChildDetailView: View {
    
    var event: Event
    
    var body: some View {
        
        NavigationView {
                Form {
                    Section {
                        Text(event.date)
                    }
                    Section {
                        Text(event.description)
                        Image(event.imageName)
                                .resizable()
                                .scaledToFit()
                    }
                }
            }
        .navigationTitle(event.name)
    }
}


struct ChildDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        ScrollView {
                Form {
                    Section {
                        ChildDetailView(event: Event(name: "Option 1a",
                                                     date: "",
                                                     description: """
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tristique porttitor odio ut iaculis. Aliquam aliquet, sem sed imperdiet tincidunt, nibh urna tristique quam, sed tristique risus ex et elit. Proin tellus nulla, semper vel rutrum sit amet, imperdiet a orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a faucibus leo. In hac habitasse platea dictumst. Sed nec ex vel nulla convallis venenatis. Duis pretium sit amet nunc eget suscipit. Nam vitae velit sit amet velit posuere tincidunt in at tortor. Integer congue velit erat, ut rutrum lectus aliquam id. Praesent ac ipsum in turpis semper vestibulum non at eros. Curabitur placerat, odio in vehicula pretium, ante tortor porttitor orci, efficitur viverra nisi est ac tortor.
                                                     
                                            Donec sit amet magna non nisl varius cursus et condimentum urna. Cras elementum maximus nisl. Vivamus hendrerit vitae felis eu interdum. Quisque sit amet nisl dapibus, interdum mauris non, condimentum risus. Integer sit amet ante at enim molestie elementum. Curabitur tempus facilisis magna interdum congue. Ut luctus nulla turpis, et maximus ante blandit ac. Duis gravida dui vel augue pretium placerat convallis lobortis ipsum. Vestibulum congue lacus a massa facilisis ultrices. Nullam at blandit lectus. Cras varius ipsum eget nisi viverra dictum. Nulla eu mollis leo. Phasellus quis nisl tellus. Nulla id aliquet urna.

                                            Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus cursus risus eu elementum volutpat. Fusce pretium odio ac metus interdum interdum. Maecenas auctor leo ac nisi molestie, ut semper lacus vulputate. Etiam id lacinia purus. Maecenas pulvinar augue ullamcorper diam elementum, in dictum sapien consequat. Curabitur lobortis metus eu semper semper. Integer et mauris ut magna malesuada vehicula.
                                            """,
                                                     imageName: "image1a"))
                    }
                }
            }
        }
    }

