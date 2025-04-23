import Foundation
import SwiftUI

struct InfiniteImageCarousellView: View {
    @State var isFullScreenPresented : Bool = false
    @State var selectedIndex : Int
    
    let imageStrings: [String] = [
        "1. cat",
        "2. panda",
        "3. Lion",
        "4. Tiger",
        "5. dog"
    ]
  
    var body: some View {
        InfinitePageView(
            selection: $selectedIndex,
            before: { correctedIndex(for: $0 - 1) },
            after: { correctedIndex(for: $0 + 1) },
            view: { index in
                Text(imageStrings[index])
                    .frame(width: 100, height: 100)
                    #if os(iOS)
                    .fullScreenCover(isPresented: $isFullScreenPresented) {
                        InfiniteImageCarousellView(selectedIndex: index)
                    }
                    #endif
                    .onTapGesture {
                        self.isFullScreenPresented = true
                    }
                

            }
        )
    }

    func correctedIndex(for index: Int) -> Int {
        let count = imageStrings.count
        return (count + index) % count
    }
}


#Preview {
    InfiniteImageCarousellView(selectedIndex: 0)
}
