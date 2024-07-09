import SwiftUI

public struct DynamicView: View {
    public init() { }
    
    public var body: some View {
        VStack {
            Text("JÃO CABULOSO")
                .padding()
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
