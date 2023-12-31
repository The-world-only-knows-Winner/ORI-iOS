import SwiftUI
import HomeFeatureInterface
import DesignSystem
import NeedleFoundation
import MyPageFeatureInterface

public protocol HomeDependency: Dependency {
    var myPageFactory: any MyPageFactory { get }
    var routeFactory: any RouteFactory { get }
}

public final class HomeComponent: Component<HomeDependency>, HomeFactory {
    public func makeView() -> some View {
        NavigationView {
            HomeView(
                viewModel: .init(),
                myPageFactory: dependency.myPageFactory,
                routeFactory: dependency.routeFactory
            )
        }
    }
}
