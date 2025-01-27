import SwiftUI

public struct DynamicView: View {
    public init() { }
    
    public var body: some View {
        VStack {
            Text("TESTFLIGHT CARAIOOOO")
                .padding()

            Button("BUTÃO") {
                print("BUTÃO")
            }
        }
    }
}

@objc public class DynamicViewLoader: NSObject {
    @objc public static func createDynamicView() -> AnyObject {
        return AnyView(DynamicView()) as AnyObject
    }
}

@_cdecl("createDynamicView")
public func createDynamicView() -> AnyObject {
    return DynamicViewLoader.createDynamicView()
}
