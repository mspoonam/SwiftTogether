
/*
 Reference :-
 
 https://www.programiz.com/swift-programming/enum#:~:text=Swift%20enums%20with%20rawValue,cases%20small%20and%20medium%20respectively.
 */


enum Season: Int, CaseIterable {
    case winter = 13, summer, rainy
}

enum Countries: String, CaseIterable {
    case IN = "India"
    case US = "USA"
    case UK = "United Kingdom"
    case P = "Poland"
    
    func whichCountry() {
        switch(self) {
        case .IN:
            print("India is my country")
        default:
            print("This is not my country")
        }
    }
    
    func getFavouriteCountryForEngineers() {
        switch(self){
        case .US:
            print("Yes US is the favourite Country for engineers")
        default:
            print("no this is not that favourite")
        }
    }
}




// enum with Associated Values

enum Painting {
    
    // associated string value
    case name(String)
    
    // associated int value
    case print(Int)
}



