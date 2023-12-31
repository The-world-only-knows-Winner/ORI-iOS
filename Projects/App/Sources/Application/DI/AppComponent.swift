import NeedleFoundation
import SwiftUI
import JwtStoreInterface
import RootFeature
import RootFeatureInterface
import OnboardingFeature
import OnboardingFeatureInterface
import SigninFeature
import SigninFeatureInterface
import SignupFeature
import SignupFeatureInterface
import HomeFeature
import HomeFeatureInterface
import MyPageFeature
import MyPageFeatureInterface
import RenewalPasswordFeature
import RenewalPasswordFeatureInterface
import ChangeProfileFeature
import ChangeProfileFeatureInterface
import SplashFeature
import SplashFeatureInterface

public final class AppComponent: BootstrapComponent {
    private let _keychain: any Keychain

    init(keychain: any Keychain) {
        self._keychain = keychain
    }

    public func makeRootView() -> some View {
        rootComponent.makeView()
    }

    public var keychain: any Keychain {
        shared {
            _keychain
        }
    }

    var rootComponent: RootComponent {
        RootComponent(parent: self)
    }
}

public extension AppComponent {
    var signinFactory: any SigninFactory {
        SigninComponent(parent: self)
    }
    var authSignupFactory: any AuthSignupFactory {
        AuthSignupComponent(parent: self)
    }
    var userInfoSignupFactory: any UserInfoSignupFactory {
        UserInfoSignupComponent(parent: self)
    }
    var onboardingFactory: any OnboardingFactory {
        OnboardingComponent(parent: self)
    }
    var homeFactory: any HomeFactory {
        HomeComponent(parent: self)
    }
    var splashFactory: any SplashFactory {
        SplashComponent(parent: self)
    }
    var myPageFactory: any MyPageFactory {
        MyPageComponent(parent: self)
    }
    var renewalPasswordFactory: any RenewalPasswordFactory {
        RenewalPasswordComponent(parent: self)
    }
    var changeProfileFactory: any ChangeProfileFactory {
        ChangeProfileComponent(parent: self)
    }
    var routeFactory: any RouteFactory {
        RouteComponent(parent: self)
    }
    var confirmFactory: any ConfirmFactory {
        ConfirmComponent(parent: self)
    }
    var searchRouteFactory: any SearchRouteFactory {
        SearchRouteComponent(parent: self)
    }
}
