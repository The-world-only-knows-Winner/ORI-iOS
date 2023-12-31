import Foundation

public struct FetchRouteResponseDTO: Decodable {
    public let routeList: RouteListResponseDTO

    public init(routeList: RouteListResponseDTO) {
        self.routeList = routeList
    }
}

public struct RouteListResponseDTO: Decodable {
    public let busCount: Int
    public let pathList: [PathListResponseDTO]

    public init(busCount: Int, pathList: [PathListResponseDTO]) {
        self.busCount = busCount
        self.pathList = pathList
    }
}

public struct PathListResponseDTO: Decodable {
    public let pathInfo: PathInfoResponseDTO
    public let subPathList: [SubPathListResponseDTO]

    public init(pathInfo: PathInfoResponseDTO, subPathList: [SubPathListResponseDTO]) {
        self.pathInfo = pathInfo
        self.subPathList = subPathList
    }
}

public struct PathInfoResponseDTO: Decodable {
    public let totalTime, busTransitCount: Int
    public let firstStartStation, lastEndStation: String

    public init(
        totalTime: Int,
        busTransitCount: Int,
        firstStartStation: String,
        lastEndStation: String
    ) {
        self.totalTime = totalTime
        self.busTransitCount = busTransitCount
        self.firstStartStation = firstStartStation
        self.lastEndStation = lastEndStation
    }
}

public struct SubPathListResponseDTO: Decodable {
    public let trafficType: TrafficType
    public let sectionTime: Int
    public let busNo, startName: String
    public let startXPoint, startYPoint: Float
    public let endName: String
    public let endXPoint, endYPoint: Float

    public init(
        trafficType: TrafficType,
        sectionTime: Int,
        busNo: String,
        startName: String,
        startXPoint: Float,
        startYPoint: Float,
        endName: String,
        endXPoint: Float,
        endYPoint: Float
    ) {
        self.trafficType = trafficType
        self.sectionTime = sectionTime
        self.busNo = busNo
        self.startName = startName
        self.startXPoint = startXPoint
        self.startYPoint = startYPoint
        self.endName = endName
        self.endXPoint = endXPoint
        self.endYPoint = endYPoint
    }
}
