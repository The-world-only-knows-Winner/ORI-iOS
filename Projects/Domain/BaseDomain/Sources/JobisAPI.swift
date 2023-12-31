import Foundation
import Moya

public protocol JobisAPI: TargetType, JwtAuthorizable {
    associatedtype ErrorType: Error
    var domain: JobisDomain { get }
    var urlPath: String { get }
    var errorMap: [Int: ErrorType] { get }
}

public extension JobisAPI {
    var baseURL: URL {
        URL(
            string: Bundle.main.object(forInfoDictionaryKey: "BASE_URL") as? String ?? ""
        ) ?? URL(string: "https://www.google.com")!
    }

    var path: String {
        domain.asURLString + urlPath
    }

    var headers: [String: String]? {
        ["Content-Type": "application/json"]
    }

    var validationType: ValidationType {
        return .successCodes
    }
}

public enum JobisDomain: String {
    case auth
    case user
    case route
    case station
}

extension JobisDomain {
    var asURLString: String {
        "/\(self.rawValue)"
    }
}
