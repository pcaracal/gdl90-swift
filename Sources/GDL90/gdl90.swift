import RustXcframework
public func parse_gdl90_bytes(_ bytes: UnsafeBufferPointer<UInt8>) -> RustVec<MessageResult> {
    RustVec(ptr: __swift_bridge__$parse_gdl90_bytes(bytes.toFfiSlice()))
}
public struct Heartbeat {
    public var gps_pos_valid: Bool
    public var maint_reqd: Bool
    public var ident: Bool
    public var addr_type: Bool
    public var gps_batt_low: Bool
    public var ratcs: Bool
    public var uat_initialized: Bool
    public var csa_requested: Bool
    public var csa_not_available: Bool
    public var utc_ok: Bool
    public var timestamp: UInt32
    public var message_counts: UInt16

    public init(gps_pos_valid: Bool,maint_reqd: Bool,ident: Bool,addr_type: Bool,gps_batt_low: Bool,ratcs: Bool,uat_initialized: Bool,csa_requested: Bool,csa_not_available: Bool,utc_ok: Bool,timestamp: UInt32,message_counts: UInt16) {
        self.gps_pos_valid = gps_pos_valid
        self.maint_reqd = maint_reqd
        self.ident = ident
        self.addr_type = addr_type
        self.gps_batt_low = gps_batt_low
        self.ratcs = ratcs
        self.uat_initialized = uat_initialized
        self.csa_requested = csa_requested
        self.csa_not_available = csa_not_available
        self.utc_ok = utc_ok
        self.timestamp = timestamp
        self.message_counts = message_counts
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$Heartbeat {
        { let val = self; return __swift_bridge__$Heartbeat(gps_pos_valid: val.gps_pos_valid, maint_reqd: val.maint_reqd, ident: val.ident, addr_type: val.addr_type, gps_batt_low: val.gps_batt_low, ratcs: val.ratcs, uat_initialized: val.uat_initialized, csa_requested: val.csa_requested, csa_not_available: val.csa_not_available, utc_ok: val.utc_ok, timestamp: val.timestamp, message_counts: val.message_counts); }()
    }
}
extension __swift_bridge__$Heartbeat {
    @inline(__always)
    func intoSwiftRepr() -> Heartbeat {
        { let val = self; return Heartbeat(gps_pos_valid: val.gps_pos_valid, maint_reqd: val.maint_reqd, ident: val.ident, addr_type: val.addr_type, gps_batt_low: val.gps_batt_low, ratcs: val.ratcs, uat_initialized: val.uat_initialized, csa_requested: val.csa_requested, csa_not_available: val.csa_not_available, utc_ok: val.utc_ok, timestamp: val.timestamp, message_counts: val.message_counts); }()
    }
}
extension __swift_bridge__$Option$Heartbeat {
    @inline(__always)
    func intoSwiftRepr() -> Optional<Heartbeat> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<Heartbeat>) -> __swift_bridge__$Option$Heartbeat {
        if let v = val {
            return __swift_bridge__$Option$Heartbeat(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$Heartbeat(is_some: false, val: __swift_bridge__$Heartbeat())
        }
    }
}
public struct Initialization {
    public var audio_test: Bool
    public var audio_inhibit: Bool
    public var cdti_ok: Bool
    public var csa_audio_disable: Bool
    public var csa_disable: Bool

    public init(audio_test: Bool,audio_inhibit: Bool,cdti_ok: Bool,csa_audio_disable: Bool,csa_disable: Bool) {
        self.audio_test = audio_test
        self.audio_inhibit = audio_inhibit
        self.cdti_ok = cdti_ok
        self.csa_audio_disable = csa_audio_disable
        self.csa_disable = csa_disable
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$Initialization {
        { let val = self; return __swift_bridge__$Initialization(audio_test: val.audio_test, audio_inhibit: val.audio_inhibit, cdti_ok: val.cdti_ok, csa_audio_disable: val.csa_audio_disable, csa_disable: val.csa_disable); }()
    }
}
extension __swift_bridge__$Initialization {
    @inline(__always)
    func intoSwiftRepr() -> Initialization {
        { let val = self; return Initialization(audio_test: val.audio_test, audio_inhibit: val.audio_inhibit, cdti_ok: val.cdti_ok, csa_audio_disable: val.csa_audio_disable, csa_disable: val.csa_disable); }()
    }
}
extension __swift_bridge__$Option$Initialization {
    @inline(__always)
    func intoSwiftRepr() -> Optional<Initialization> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<Initialization>) -> __swift_bridge__$Option$Initialization {
        if let v = val {
            return __swift_bridge__$Option$Initialization(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$Initialization(is_some: false, val: __swift_bridge__$Initialization())
        }
    }
}
public enum TrafficAlertStatus {
    case NoAlert
    case TrafficAlert
}
extension TrafficAlertStatus {
    func intoFfiRepr() -> __swift_bridge__$TrafficAlertStatus {
        switch self {
            case TrafficAlertStatus.NoAlert:
                return __swift_bridge__$TrafficAlertStatus(tag: __swift_bridge__$TrafficAlertStatus$NoAlert)
            case TrafficAlertStatus.TrafficAlert:
                return __swift_bridge__$TrafficAlertStatus(tag: __swift_bridge__$TrafficAlertStatus$TrafficAlert)
        }
    }
}
extension __swift_bridge__$TrafficAlertStatus {
    func intoSwiftRepr() -> TrafficAlertStatus {
        switch self.tag {
            case __swift_bridge__$TrafficAlertStatus$NoAlert:
                return TrafficAlertStatus.NoAlert
            case __swift_bridge__$TrafficAlertStatus$TrafficAlert:
                return TrafficAlertStatus.TrafficAlert
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$TrafficAlertStatus {
    @inline(__always)
    func intoSwiftRepr() -> Optional<TrafficAlertStatus> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<TrafficAlertStatus>) -> __swift_bridge__$Option$TrafficAlertStatus {
        if let v = val {
            return __swift_bridge__$Option$TrafficAlertStatus(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$TrafficAlertStatus(is_some: false, val: __swift_bridge__$TrafficAlertStatus())
        }
    }
}
extension TrafficAlertStatus: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_TrafficAlertStatus$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_TrafficAlertStatus$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_TrafficAlertStatus$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_TrafficAlertStatus$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_TrafficAlertStatus$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_TrafficAlertStatus$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_TrafficAlertStatus$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_TrafficAlertStatus$len(vecPtr)
    }
}
public struct TargetIdentity {
    public var address_type: AddressType
    public var participant_address: UInt32

    public init(address_type: AddressType,participant_address: UInt32) {
        self.address_type = address_type
        self.participant_address = participant_address
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$TargetIdentity {
        { let val = self; return __swift_bridge__$TargetIdentity(address_type: val.address_type.intoFfiRepr(), participant_address: val.participant_address); }()
    }
}
extension __swift_bridge__$TargetIdentity {
    @inline(__always)
    func intoSwiftRepr() -> TargetIdentity {
        { let val = self; return TargetIdentity(address_type: val.address_type.intoSwiftRepr(), participant_address: val.participant_address); }()
    }
}
extension __swift_bridge__$Option$TargetIdentity {
    @inline(__always)
    func intoSwiftRepr() -> Optional<TargetIdentity> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<TargetIdentity>) -> __swift_bridge__$Option$TargetIdentity {
        if let v = val {
            return __swift_bridge__$Option$TargetIdentity(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$TargetIdentity(is_some: false, val: __swift_bridge__$TargetIdentity())
        }
    }
}
public enum AddressType {
    case AdsbIcao
    case AdsbSelfAssigned
    case TisbIcao
    case TisbTrackFileId
    case SurfaceVehicle
    case GroundStationBeacon
}
extension AddressType {
    func intoFfiRepr() -> __swift_bridge__$AddressType {
        switch self {
            case AddressType.AdsbIcao:
                return __swift_bridge__$AddressType(tag: __swift_bridge__$AddressType$AdsbIcao)
            case AddressType.AdsbSelfAssigned:
                return __swift_bridge__$AddressType(tag: __swift_bridge__$AddressType$AdsbSelfAssigned)
            case AddressType.TisbIcao:
                return __swift_bridge__$AddressType(tag: __swift_bridge__$AddressType$TisbIcao)
            case AddressType.TisbTrackFileId:
                return __swift_bridge__$AddressType(tag: __swift_bridge__$AddressType$TisbTrackFileId)
            case AddressType.SurfaceVehicle:
                return __swift_bridge__$AddressType(tag: __swift_bridge__$AddressType$SurfaceVehicle)
            case AddressType.GroundStationBeacon:
                return __swift_bridge__$AddressType(tag: __swift_bridge__$AddressType$GroundStationBeacon)
        }
    }
}
extension __swift_bridge__$AddressType {
    func intoSwiftRepr() -> AddressType {
        switch self.tag {
            case __swift_bridge__$AddressType$AdsbIcao:
                return AddressType.AdsbIcao
            case __swift_bridge__$AddressType$AdsbSelfAssigned:
                return AddressType.AdsbSelfAssigned
            case __swift_bridge__$AddressType$TisbIcao:
                return AddressType.TisbIcao
            case __swift_bridge__$AddressType$TisbTrackFileId:
                return AddressType.TisbTrackFileId
            case __swift_bridge__$AddressType$SurfaceVehicle:
                return AddressType.SurfaceVehicle
            case __swift_bridge__$AddressType$GroundStationBeacon:
                return AddressType.GroundStationBeacon
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$AddressType {
    @inline(__always)
    func intoSwiftRepr() -> Optional<AddressType> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<AddressType>) -> __swift_bridge__$Option$AddressType {
        if let v = val {
            return __swift_bridge__$Option$AddressType(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$AddressType(is_some: false, val: __swift_bridge__$AddressType())
        }
    }
}
extension AddressType: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_AddressType$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_AddressType$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_AddressType$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_AddressType$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_AddressType$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_AddressType$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_AddressType$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_AddressType$len(vecPtr)
    }
}
public struct MiscellaneousIndicators {
    public var air_ground_state: AirGroundState
    public var report_type: ReportType
    public var track_heading_type: TrackHeadingType

    public init(air_ground_state: AirGroundState,report_type: ReportType,track_heading_type: TrackHeadingType) {
        self.air_ground_state = air_ground_state
        self.report_type = report_type
        self.track_heading_type = track_heading_type
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$MiscellaneousIndicators {
        { let val = self; return __swift_bridge__$MiscellaneousIndicators(air_ground_state: val.air_ground_state.intoFfiRepr(), report_type: val.report_type.intoFfiRepr(), track_heading_type: val.track_heading_type.intoFfiRepr()); }()
    }
}
extension __swift_bridge__$MiscellaneousIndicators {
    @inline(__always)
    func intoSwiftRepr() -> MiscellaneousIndicators {
        { let val = self; return MiscellaneousIndicators(air_ground_state: val.air_ground_state.intoSwiftRepr(), report_type: val.report_type.intoSwiftRepr(), track_heading_type: val.track_heading_type.intoSwiftRepr()); }()
    }
}
extension __swift_bridge__$Option$MiscellaneousIndicators {
    @inline(__always)
    func intoSwiftRepr() -> Optional<MiscellaneousIndicators> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<MiscellaneousIndicators>) -> __swift_bridge__$Option$MiscellaneousIndicators {
        if let v = val {
            return __swift_bridge__$Option$MiscellaneousIndicators(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$MiscellaneousIndicators(is_some: false, val: __swift_bridge__$MiscellaneousIndicators())
        }
    }
}
public enum AirGroundState {
    case OnGround
    case Airborne
}
extension AirGroundState {
    func intoFfiRepr() -> __swift_bridge__$AirGroundState {
        switch self {
            case AirGroundState.OnGround:
                return __swift_bridge__$AirGroundState(tag: __swift_bridge__$AirGroundState$OnGround)
            case AirGroundState.Airborne:
                return __swift_bridge__$AirGroundState(tag: __swift_bridge__$AirGroundState$Airborne)
        }
    }
}
extension __swift_bridge__$AirGroundState {
    func intoSwiftRepr() -> AirGroundState {
        switch self.tag {
            case __swift_bridge__$AirGroundState$OnGround:
                return AirGroundState.OnGround
            case __swift_bridge__$AirGroundState$Airborne:
                return AirGroundState.Airborne
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$AirGroundState {
    @inline(__always)
    func intoSwiftRepr() -> Optional<AirGroundState> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<AirGroundState>) -> __swift_bridge__$Option$AirGroundState {
        if let v = val {
            return __swift_bridge__$Option$AirGroundState(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$AirGroundState(is_some: false, val: __swift_bridge__$AirGroundState())
        }
    }
}
extension AirGroundState: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_AirGroundState$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_AirGroundState$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_AirGroundState$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_AirGroundState$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_AirGroundState$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_AirGroundState$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_AirGroundState$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_AirGroundState$len(vecPtr)
    }
}
public enum ReportType {
    case Updated
    case Extrapolated
}
extension ReportType {
    func intoFfiRepr() -> __swift_bridge__$ReportType {
        switch self {
            case ReportType.Updated:
                return __swift_bridge__$ReportType(tag: __swift_bridge__$ReportType$Updated)
            case ReportType.Extrapolated:
                return __swift_bridge__$ReportType(tag: __swift_bridge__$ReportType$Extrapolated)
        }
    }
}
extension __swift_bridge__$ReportType {
    func intoSwiftRepr() -> ReportType {
        switch self.tag {
            case __swift_bridge__$ReportType$Updated:
                return ReportType.Updated
            case __swift_bridge__$ReportType$Extrapolated:
                return ReportType.Extrapolated
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$ReportType {
    @inline(__always)
    func intoSwiftRepr() -> Optional<ReportType> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<ReportType>) -> __swift_bridge__$Option$ReportType {
        if let v = val {
            return __swift_bridge__$Option$ReportType(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$ReportType(is_some: false, val: __swift_bridge__$ReportType())
        }
    }
}
extension ReportType: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_ReportType$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_ReportType$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_ReportType$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_ReportType$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_ReportType$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_ReportType$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_ReportType$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_ReportType$len(vecPtr)
    }
}
public enum TrackHeadingType {
    case NotValid
    case TrueTrackAngle
    case HeadingMagnetic
    case HeadingTrue
}
extension TrackHeadingType {
    func intoFfiRepr() -> __swift_bridge__$TrackHeadingType {
        switch self {
            case TrackHeadingType.NotValid:
                return __swift_bridge__$TrackHeadingType(tag: __swift_bridge__$TrackHeadingType$NotValid)
            case TrackHeadingType.TrueTrackAngle:
                return __swift_bridge__$TrackHeadingType(tag: __swift_bridge__$TrackHeadingType$TrueTrackAngle)
            case TrackHeadingType.HeadingMagnetic:
                return __swift_bridge__$TrackHeadingType(tag: __swift_bridge__$TrackHeadingType$HeadingMagnetic)
            case TrackHeadingType.HeadingTrue:
                return __swift_bridge__$TrackHeadingType(tag: __swift_bridge__$TrackHeadingType$HeadingTrue)
        }
    }
}
extension __swift_bridge__$TrackHeadingType {
    func intoSwiftRepr() -> TrackHeadingType {
        switch self.tag {
            case __swift_bridge__$TrackHeadingType$NotValid:
                return TrackHeadingType.NotValid
            case __swift_bridge__$TrackHeadingType$TrueTrackAngle:
                return TrackHeadingType.TrueTrackAngle
            case __swift_bridge__$TrackHeadingType$HeadingMagnetic:
                return TrackHeadingType.HeadingMagnetic
            case __swift_bridge__$TrackHeadingType$HeadingTrue:
                return TrackHeadingType.HeadingTrue
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$TrackHeadingType {
    @inline(__always)
    func intoSwiftRepr() -> Optional<TrackHeadingType> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<TrackHeadingType>) -> __swift_bridge__$Option$TrackHeadingType {
        if let v = val {
            return __swift_bridge__$Option$TrackHeadingType(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$TrackHeadingType(is_some: false, val: __swift_bridge__$TrackHeadingType())
        }
    }
}
extension TrackHeadingType: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_TrackHeadingType$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_TrackHeadingType$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_TrackHeadingType$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_TrackHeadingType$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_TrackHeadingType$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_TrackHeadingType$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_TrackHeadingType$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_TrackHeadingType$len(vecPtr)
    }
}
public enum NIC {
    case NIC0_Unknown
    case NIC1_20NM
    case NIC2_8NM
    case NIC3_4NM
    case NIC4_2NM
    case NIC5_1NM
    case NIC6_0_6NM
    case NIC7_0_2NM
    case NIC8_0_1NM
    case NIC9_HPL_75M_VPL_112M
    case NIC10_HPL_25M_VPL_37_5M
    case NIC11_HPL_7_5M_VPL_11M
}
extension NIC {
    func intoFfiRepr() -> __swift_bridge__$NIC {
        switch self {
            case NIC.NIC0_Unknown:
                return __swift_bridge__$NIC(tag: __swift_bridge__$NIC$NIC0_Unknown)
            case NIC.NIC1_20NM:
                return __swift_bridge__$NIC(tag: __swift_bridge__$NIC$NIC1_20NM)
            case NIC.NIC2_8NM:
                return __swift_bridge__$NIC(tag: __swift_bridge__$NIC$NIC2_8NM)
            case NIC.NIC3_4NM:
                return __swift_bridge__$NIC(tag: __swift_bridge__$NIC$NIC3_4NM)
            case NIC.NIC4_2NM:
                return __swift_bridge__$NIC(tag: __swift_bridge__$NIC$NIC4_2NM)
            case NIC.NIC5_1NM:
                return __swift_bridge__$NIC(tag: __swift_bridge__$NIC$NIC5_1NM)
            case NIC.NIC6_0_6NM:
                return __swift_bridge__$NIC(tag: __swift_bridge__$NIC$NIC6_0_6NM)
            case NIC.NIC7_0_2NM:
                return __swift_bridge__$NIC(tag: __swift_bridge__$NIC$NIC7_0_2NM)
            case NIC.NIC8_0_1NM:
                return __swift_bridge__$NIC(tag: __swift_bridge__$NIC$NIC8_0_1NM)
            case NIC.NIC9_HPL_75M_VPL_112M:
                return __swift_bridge__$NIC(tag: __swift_bridge__$NIC$NIC9_HPL_75M_VPL_112M)
            case NIC.NIC10_HPL_25M_VPL_37_5M:
                return __swift_bridge__$NIC(tag: __swift_bridge__$NIC$NIC10_HPL_25M_VPL_37_5M)
            case NIC.NIC11_HPL_7_5M_VPL_11M:
                return __swift_bridge__$NIC(tag: __swift_bridge__$NIC$NIC11_HPL_7_5M_VPL_11M)
        }
    }
}
extension __swift_bridge__$NIC {
    func intoSwiftRepr() -> NIC {
        switch self.tag {
            case __swift_bridge__$NIC$NIC0_Unknown:
                return NIC.NIC0_Unknown
            case __swift_bridge__$NIC$NIC1_20NM:
                return NIC.NIC1_20NM
            case __swift_bridge__$NIC$NIC2_8NM:
                return NIC.NIC2_8NM
            case __swift_bridge__$NIC$NIC3_4NM:
                return NIC.NIC3_4NM
            case __swift_bridge__$NIC$NIC4_2NM:
                return NIC.NIC4_2NM
            case __swift_bridge__$NIC$NIC5_1NM:
                return NIC.NIC5_1NM
            case __swift_bridge__$NIC$NIC6_0_6NM:
                return NIC.NIC6_0_6NM
            case __swift_bridge__$NIC$NIC7_0_2NM:
                return NIC.NIC7_0_2NM
            case __swift_bridge__$NIC$NIC8_0_1NM:
                return NIC.NIC8_0_1NM
            case __swift_bridge__$NIC$NIC9_HPL_75M_VPL_112M:
                return NIC.NIC9_HPL_75M_VPL_112M
            case __swift_bridge__$NIC$NIC10_HPL_25M_VPL_37_5M:
                return NIC.NIC10_HPL_25M_VPL_37_5M
            case __swift_bridge__$NIC$NIC11_HPL_7_5M_VPL_11M:
                return NIC.NIC11_HPL_7_5M_VPL_11M
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$NIC {
    @inline(__always)
    func intoSwiftRepr() -> Optional<NIC> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<NIC>) -> __swift_bridge__$Option$NIC {
        if let v = val {
            return __swift_bridge__$Option$NIC(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$NIC(is_some: false, val: __swift_bridge__$NIC())
        }
    }
}
extension NIC: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_NIC$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_NIC$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_NIC$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_NIC$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_NIC$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_NIC$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_NIC$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_NIC$len(vecPtr)
    }
}
public enum NACp {
    case NACp0_Unknown
    case NACp1_10NM
    case NACp2_4NM
    case NACp3_2NM
    case NACp4_1NM
    case NACp5_0_5NM
    case NACp6_0_3NM
    case NACp7_0_1NM
    case NACp8_0_05NM
    case NACp9_HFOM_30M_VFOM_45M
    case NACp10_HFOM_10M_VFOM_15M
    case NACp11_HFOM_3M_VFOM_4M
}
extension NACp {
    func intoFfiRepr() -> __swift_bridge__$NACp {
        switch self {
            case NACp.NACp0_Unknown:
                return __swift_bridge__$NACp(tag: __swift_bridge__$NACp$NACp0_Unknown)
            case NACp.NACp1_10NM:
                return __swift_bridge__$NACp(tag: __swift_bridge__$NACp$NACp1_10NM)
            case NACp.NACp2_4NM:
                return __swift_bridge__$NACp(tag: __swift_bridge__$NACp$NACp2_4NM)
            case NACp.NACp3_2NM:
                return __swift_bridge__$NACp(tag: __swift_bridge__$NACp$NACp3_2NM)
            case NACp.NACp4_1NM:
                return __swift_bridge__$NACp(tag: __swift_bridge__$NACp$NACp4_1NM)
            case NACp.NACp5_0_5NM:
                return __swift_bridge__$NACp(tag: __swift_bridge__$NACp$NACp5_0_5NM)
            case NACp.NACp6_0_3NM:
                return __swift_bridge__$NACp(tag: __swift_bridge__$NACp$NACp6_0_3NM)
            case NACp.NACp7_0_1NM:
                return __swift_bridge__$NACp(tag: __swift_bridge__$NACp$NACp7_0_1NM)
            case NACp.NACp8_0_05NM:
                return __swift_bridge__$NACp(tag: __swift_bridge__$NACp$NACp8_0_05NM)
            case NACp.NACp9_HFOM_30M_VFOM_45M:
                return __swift_bridge__$NACp(tag: __swift_bridge__$NACp$NACp9_HFOM_30M_VFOM_45M)
            case NACp.NACp10_HFOM_10M_VFOM_15M:
                return __swift_bridge__$NACp(tag: __swift_bridge__$NACp$NACp10_HFOM_10M_VFOM_15M)
            case NACp.NACp11_HFOM_3M_VFOM_4M:
                return __swift_bridge__$NACp(tag: __swift_bridge__$NACp$NACp11_HFOM_3M_VFOM_4M)
        }
    }
}
extension __swift_bridge__$NACp {
    func intoSwiftRepr() -> NACp {
        switch self.tag {
            case __swift_bridge__$NACp$NACp0_Unknown:
                return NACp.NACp0_Unknown
            case __swift_bridge__$NACp$NACp1_10NM:
                return NACp.NACp1_10NM
            case __swift_bridge__$NACp$NACp2_4NM:
                return NACp.NACp2_4NM
            case __swift_bridge__$NACp$NACp3_2NM:
                return NACp.NACp3_2NM
            case __swift_bridge__$NACp$NACp4_1NM:
                return NACp.NACp4_1NM
            case __swift_bridge__$NACp$NACp5_0_5NM:
                return NACp.NACp5_0_5NM
            case __swift_bridge__$NACp$NACp6_0_3NM:
                return NACp.NACp6_0_3NM
            case __swift_bridge__$NACp$NACp7_0_1NM:
                return NACp.NACp7_0_1NM
            case __swift_bridge__$NACp$NACp8_0_05NM:
                return NACp.NACp8_0_05NM
            case __swift_bridge__$NACp$NACp9_HFOM_30M_VFOM_45M:
                return NACp.NACp9_HFOM_30M_VFOM_45M
            case __swift_bridge__$NACp$NACp10_HFOM_10M_VFOM_15M:
                return NACp.NACp10_HFOM_10M_VFOM_15M
            case __swift_bridge__$NACp$NACp11_HFOM_3M_VFOM_4M:
                return NACp.NACp11_HFOM_3M_VFOM_4M
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$NACp {
    @inline(__always)
    func intoSwiftRepr() -> Optional<NACp> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<NACp>) -> __swift_bridge__$Option$NACp {
        if let v = val {
            return __swift_bridge__$Option$NACp(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$NACp(is_some: false, val: __swift_bridge__$NACp())
        }
    }
}
extension NACp: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_NACp$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_NACp$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_NACp$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_NACp$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_NACp$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_NACp$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_NACp$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_NACp$len(vecPtr)
    }
}
public enum EmitterCategory {
    case NoInformation
    case Light
    case Small
    case Large
    case HighVortexLarge
    case Heavy
    case HighlyManeuverable
    case Rotorcraft
    case GliderSailplane
    case LighterThanAir
    case ParachutistSkyDiver
    case UltraLightHangGliderParaglider
    case UnmannedAerialVehicle
    case SpaceTransatmosphericVehicle
    case SurfaceVehicleEmergencyVehicle
    case SurfaceVehicleServiceVehicle
    case PointObstacleIncludesTetheredBalloons
    case ClusterObstacle
    case LineObstacle
}
extension EmitterCategory {
    func intoFfiRepr() -> __swift_bridge__$EmitterCategory {
        switch self {
            case EmitterCategory.NoInformation:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$NoInformation)
            case EmitterCategory.Light:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$Light)
            case EmitterCategory.Small:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$Small)
            case EmitterCategory.Large:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$Large)
            case EmitterCategory.HighVortexLarge:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$HighVortexLarge)
            case EmitterCategory.Heavy:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$Heavy)
            case EmitterCategory.HighlyManeuverable:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$HighlyManeuverable)
            case EmitterCategory.Rotorcraft:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$Rotorcraft)
            case EmitterCategory.GliderSailplane:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$GliderSailplane)
            case EmitterCategory.LighterThanAir:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$LighterThanAir)
            case EmitterCategory.ParachutistSkyDiver:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$ParachutistSkyDiver)
            case EmitterCategory.UltraLightHangGliderParaglider:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$UltraLightHangGliderParaglider)
            case EmitterCategory.UnmannedAerialVehicle:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$UnmannedAerialVehicle)
            case EmitterCategory.SpaceTransatmosphericVehicle:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$SpaceTransatmosphericVehicle)
            case EmitterCategory.SurfaceVehicleEmergencyVehicle:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$SurfaceVehicleEmergencyVehicle)
            case EmitterCategory.SurfaceVehicleServiceVehicle:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$SurfaceVehicleServiceVehicle)
            case EmitterCategory.PointObstacleIncludesTetheredBalloons:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$PointObstacleIncludesTetheredBalloons)
            case EmitterCategory.ClusterObstacle:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$ClusterObstacle)
            case EmitterCategory.LineObstacle:
                return __swift_bridge__$EmitterCategory(tag: __swift_bridge__$EmitterCategory$LineObstacle)
        }
    }
}
extension __swift_bridge__$EmitterCategory {
    func intoSwiftRepr() -> EmitterCategory {
        switch self.tag {
            case __swift_bridge__$EmitterCategory$NoInformation:
                return EmitterCategory.NoInformation
            case __swift_bridge__$EmitterCategory$Light:
                return EmitterCategory.Light
            case __swift_bridge__$EmitterCategory$Small:
                return EmitterCategory.Small
            case __swift_bridge__$EmitterCategory$Large:
                return EmitterCategory.Large
            case __swift_bridge__$EmitterCategory$HighVortexLarge:
                return EmitterCategory.HighVortexLarge
            case __swift_bridge__$EmitterCategory$Heavy:
                return EmitterCategory.Heavy
            case __swift_bridge__$EmitterCategory$HighlyManeuverable:
                return EmitterCategory.HighlyManeuverable
            case __swift_bridge__$EmitterCategory$Rotorcraft:
                return EmitterCategory.Rotorcraft
            case __swift_bridge__$EmitterCategory$GliderSailplane:
                return EmitterCategory.GliderSailplane
            case __swift_bridge__$EmitterCategory$LighterThanAir:
                return EmitterCategory.LighterThanAir
            case __swift_bridge__$EmitterCategory$ParachutistSkyDiver:
                return EmitterCategory.ParachutistSkyDiver
            case __swift_bridge__$EmitterCategory$UltraLightHangGliderParaglider:
                return EmitterCategory.UltraLightHangGliderParaglider
            case __swift_bridge__$EmitterCategory$UnmannedAerialVehicle:
                return EmitterCategory.UnmannedAerialVehicle
            case __swift_bridge__$EmitterCategory$SpaceTransatmosphericVehicle:
                return EmitterCategory.SpaceTransatmosphericVehicle
            case __swift_bridge__$EmitterCategory$SurfaceVehicleEmergencyVehicle:
                return EmitterCategory.SurfaceVehicleEmergencyVehicle
            case __swift_bridge__$EmitterCategory$SurfaceVehicleServiceVehicle:
                return EmitterCategory.SurfaceVehicleServiceVehicle
            case __swift_bridge__$EmitterCategory$PointObstacleIncludesTetheredBalloons:
                return EmitterCategory.PointObstacleIncludesTetheredBalloons
            case __swift_bridge__$EmitterCategory$ClusterObstacle:
                return EmitterCategory.ClusterObstacle
            case __swift_bridge__$EmitterCategory$LineObstacle:
                return EmitterCategory.LineObstacle
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$EmitterCategory {
    @inline(__always)
    func intoSwiftRepr() -> Optional<EmitterCategory> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<EmitterCategory>) -> __swift_bridge__$Option$EmitterCategory {
        if let v = val {
            return __swift_bridge__$Option$EmitterCategory(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$EmitterCategory(is_some: false, val: __swift_bridge__$EmitterCategory())
        }
    }
}
extension EmitterCategory: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_EmitterCategory$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_EmitterCategory$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_EmitterCategory$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_EmitterCategory$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_EmitterCategory$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_EmitterCategory$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_EmitterCategory$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_EmitterCategory$len(vecPtr)
    }
}
public enum EmergencyPriorityCode {
    case NoEmergency
    case GeneralEmergency
    case MedicalEmergency
    case MinimumFuel
    case NoCommunication
    case UnlawfulInterference
    case DownedAircraft
}
extension EmergencyPriorityCode {
    func intoFfiRepr() -> __swift_bridge__$EmergencyPriorityCode {
        switch self {
            case EmergencyPriorityCode.NoEmergency:
                return __swift_bridge__$EmergencyPriorityCode(tag: __swift_bridge__$EmergencyPriorityCode$NoEmergency)
            case EmergencyPriorityCode.GeneralEmergency:
                return __swift_bridge__$EmergencyPriorityCode(tag: __swift_bridge__$EmergencyPriorityCode$GeneralEmergency)
            case EmergencyPriorityCode.MedicalEmergency:
                return __swift_bridge__$EmergencyPriorityCode(tag: __swift_bridge__$EmergencyPriorityCode$MedicalEmergency)
            case EmergencyPriorityCode.MinimumFuel:
                return __swift_bridge__$EmergencyPriorityCode(tag: __swift_bridge__$EmergencyPriorityCode$MinimumFuel)
            case EmergencyPriorityCode.NoCommunication:
                return __swift_bridge__$EmergencyPriorityCode(tag: __swift_bridge__$EmergencyPriorityCode$NoCommunication)
            case EmergencyPriorityCode.UnlawfulInterference:
                return __swift_bridge__$EmergencyPriorityCode(tag: __swift_bridge__$EmergencyPriorityCode$UnlawfulInterference)
            case EmergencyPriorityCode.DownedAircraft:
                return __swift_bridge__$EmergencyPriorityCode(tag: __swift_bridge__$EmergencyPriorityCode$DownedAircraft)
        }
    }
}
extension __swift_bridge__$EmergencyPriorityCode {
    func intoSwiftRepr() -> EmergencyPriorityCode {
        switch self.tag {
            case __swift_bridge__$EmergencyPriorityCode$NoEmergency:
                return EmergencyPriorityCode.NoEmergency
            case __swift_bridge__$EmergencyPriorityCode$GeneralEmergency:
                return EmergencyPriorityCode.GeneralEmergency
            case __swift_bridge__$EmergencyPriorityCode$MedicalEmergency:
                return EmergencyPriorityCode.MedicalEmergency
            case __swift_bridge__$EmergencyPriorityCode$MinimumFuel:
                return EmergencyPriorityCode.MinimumFuel
            case __swift_bridge__$EmergencyPriorityCode$NoCommunication:
                return EmergencyPriorityCode.NoCommunication
            case __swift_bridge__$EmergencyPriorityCode$UnlawfulInterference:
                return EmergencyPriorityCode.UnlawfulInterference
            case __swift_bridge__$EmergencyPriorityCode$DownedAircraft:
                return EmergencyPriorityCode.DownedAircraft
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$EmergencyPriorityCode {
    @inline(__always)
    func intoSwiftRepr() -> Optional<EmergencyPriorityCode> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<EmergencyPriorityCode>) -> __swift_bridge__$Option$EmergencyPriorityCode {
        if let v = val {
            return __swift_bridge__$Option$EmergencyPriorityCode(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$EmergencyPriorityCode(is_some: false, val: __swift_bridge__$EmergencyPriorityCode())
        }
    }
}
extension EmergencyPriorityCode: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_EmergencyPriorityCode$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_EmergencyPriorityCode$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_EmergencyPriorityCode$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_EmergencyPriorityCode$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_EmergencyPriorityCode$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_EmergencyPriorityCode$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_EmergencyPriorityCode$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_EmergencyPriorityCode$len(vecPtr)
    }
}
public struct ForeFlightID {
    public var version: UInt8
    public var device_serial_number: UInt64
    public var device_name: RustString
    public var device_long_name: RustString
    public var foreflight_internet_policy: ForeFlightInternetPolicy
    public var geometric_altitude_datum: GeometricAltitudeDatum

    public init(version: UInt8,device_serial_number: UInt64,device_name: RustString,device_long_name: RustString,foreflight_internet_policy: ForeFlightInternetPolicy,geometric_altitude_datum: GeometricAltitudeDatum) {
        self.version = version
        self.device_serial_number = device_serial_number
        self.device_name = device_name
        self.device_long_name = device_long_name
        self.foreflight_internet_policy = foreflight_internet_policy
        self.geometric_altitude_datum = geometric_altitude_datum
    }

    @inline(__always)
    func intoFfiRepr() -> __swift_bridge__$ForeFlightID {
        { let val = self; return __swift_bridge__$ForeFlightID(version: val.version, device_serial_number: val.device_serial_number, device_name: { let rustString = val.device_name.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), device_long_name: { let rustString = val.device_long_name.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), foreflight_internet_policy: val.foreflight_internet_policy.intoFfiRepr(), geometric_altitude_datum: val.geometric_altitude_datum.intoFfiRepr()); }()
    }
}
extension __swift_bridge__$ForeFlightID {
    @inline(__always)
    func intoSwiftRepr() -> ForeFlightID {
        { let val = self; return ForeFlightID(version: val.version, device_serial_number: val.device_serial_number, device_name: RustString(ptr: val.device_name), device_long_name: RustString(ptr: val.device_long_name), foreflight_internet_policy: val.foreflight_internet_policy.intoSwiftRepr(), geometric_altitude_datum: val.geometric_altitude_datum.intoSwiftRepr()); }()
    }
}
extension __swift_bridge__$Option$ForeFlightID {
    @inline(__always)
    func intoSwiftRepr() -> Optional<ForeFlightID> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }

    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<ForeFlightID>) -> __swift_bridge__$Option$ForeFlightID {
        if let v = val {
            return __swift_bridge__$Option$ForeFlightID(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$ForeFlightID(is_some: false, val: __swift_bridge__$ForeFlightID())
        }
    }
}
public enum GeometricAltitudeDatum {
    case WGS84
    case MSL
}
extension GeometricAltitudeDatum {
    func intoFfiRepr() -> __swift_bridge__$GeometricAltitudeDatum {
        switch self {
            case GeometricAltitudeDatum.WGS84:
                return __swift_bridge__$GeometricAltitudeDatum(tag: __swift_bridge__$GeometricAltitudeDatum$WGS84)
            case GeometricAltitudeDatum.MSL:
                return __swift_bridge__$GeometricAltitudeDatum(tag: __swift_bridge__$GeometricAltitudeDatum$MSL)
        }
    }
}
extension __swift_bridge__$GeometricAltitudeDatum {
    func intoSwiftRepr() -> GeometricAltitudeDatum {
        switch self.tag {
            case __swift_bridge__$GeometricAltitudeDatum$WGS84:
                return GeometricAltitudeDatum.WGS84
            case __swift_bridge__$GeometricAltitudeDatum$MSL:
                return GeometricAltitudeDatum.MSL
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$GeometricAltitudeDatum {
    @inline(__always)
    func intoSwiftRepr() -> Optional<GeometricAltitudeDatum> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<GeometricAltitudeDatum>) -> __swift_bridge__$Option$GeometricAltitudeDatum {
        if let v = val {
            return __swift_bridge__$Option$GeometricAltitudeDatum(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$GeometricAltitudeDatum(is_some: false, val: __swift_bridge__$GeometricAltitudeDatum())
        }
    }
}
extension GeometricAltitudeDatum: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_GeometricAltitudeDatum$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_GeometricAltitudeDatum$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_GeometricAltitudeDatum$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_GeometricAltitudeDatum$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_GeometricAltitudeDatum$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_GeometricAltitudeDatum$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_GeometricAltitudeDatum$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_GeometricAltitudeDatum$len(vecPtr)
    }
}
public enum ForeFlightInternetPolicy {
    case Unrestricted
    case Expensive
    case Disallowed
}
extension ForeFlightInternetPolicy {
    func intoFfiRepr() -> __swift_bridge__$ForeFlightInternetPolicy {
        switch self {
            case ForeFlightInternetPolicy.Unrestricted:
                return __swift_bridge__$ForeFlightInternetPolicy(tag: __swift_bridge__$ForeFlightInternetPolicy$Unrestricted)
            case ForeFlightInternetPolicy.Expensive:
                return __swift_bridge__$ForeFlightInternetPolicy(tag: __swift_bridge__$ForeFlightInternetPolicy$Expensive)
            case ForeFlightInternetPolicy.Disallowed:
                return __swift_bridge__$ForeFlightInternetPolicy(tag: __swift_bridge__$ForeFlightInternetPolicy$Disallowed)
        }
    }
}
extension __swift_bridge__$ForeFlightInternetPolicy {
    func intoSwiftRepr() -> ForeFlightInternetPolicy {
        switch self.tag {
            case __swift_bridge__$ForeFlightInternetPolicy$Unrestricted:
                return ForeFlightInternetPolicy.Unrestricted
            case __swift_bridge__$ForeFlightInternetPolicy$Expensive:
                return ForeFlightInternetPolicy.Expensive
            case __swift_bridge__$ForeFlightInternetPolicy$Disallowed:
                return ForeFlightInternetPolicy.Disallowed
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$ForeFlightInternetPolicy {
    @inline(__always)
    func intoSwiftRepr() -> Optional<ForeFlightInternetPolicy> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<ForeFlightInternetPolicy>) -> __swift_bridge__$Option$ForeFlightInternetPolicy {
        if let v = val {
            return __swift_bridge__$Option$ForeFlightInternetPolicy(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$ForeFlightInternetPolicy(is_some: false, val: __swift_bridge__$ForeFlightInternetPolicy())
        }
    }
}
extension ForeFlightInternetPolicy: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_ForeFlightInternetPolicy$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_ForeFlightInternetPolicy$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_ForeFlightInternetPolicy$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_ForeFlightInternetPolicy$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_ForeFlightInternetPolicy$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_ForeFlightInternetPolicy$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_ForeFlightInternetPolicy$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_ForeFlightInternetPolicy$len(vecPtr)
    }
}
public enum AHRSHeadingType {
    case True
    case Magnetic
}
extension AHRSHeadingType {
    func intoFfiRepr() -> __swift_bridge__$AHRSHeadingType {
        switch self {
            case AHRSHeadingType.True:
                return __swift_bridge__$AHRSHeadingType(tag: __swift_bridge__$AHRSHeadingType$True)
            case AHRSHeadingType.Magnetic:
                return __swift_bridge__$AHRSHeadingType(tag: __swift_bridge__$AHRSHeadingType$Magnetic)
        }
    }
}
extension __swift_bridge__$AHRSHeadingType {
    func intoSwiftRepr() -> AHRSHeadingType {
        switch self.tag {
            case __swift_bridge__$AHRSHeadingType$True:
                return AHRSHeadingType.True
            case __swift_bridge__$AHRSHeadingType$Magnetic:
                return AHRSHeadingType.Magnetic
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$AHRSHeadingType {
    @inline(__always)
    func intoSwiftRepr() -> Optional<AHRSHeadingType> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<AHRSHeadingType>) -> __swift_bridge__$Option$AHRSHeadingType {
        if let v = val {
            return __swift_bridge__$Option$AHRSHeadingType(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$AHRSHeadingType(is_some: false, val: __swift_bridge__$AHRSHeadingType())
        }
    }
}
extension AHRSHeadingType: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_AHRSHeadingType$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_AHRSHeadingType$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Self) {
        __swift_bridge__$Vec_AHRSHeadingType$push(vecPtr, value.intoFfiRepr())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_AHRSHeadingType$pop(vecPtr)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_AHRSHeadingType$get(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<Self> {
        let maybeEnum = __swift_bridge__$Vec_AHRSHeadingType$get_mut(vecPtr, index)
        return maybeEnum.intoSwiftRepr()
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<Self> {
        UnsafePointer<Self>(OpaquePointer(__swift_bridge__$Vec_AHRSHeadingType$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_AHRSHeadingType$len(vecPtr)
    }
}

public class PreciseOwnship: PreciseOwnshipRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$PreciseOwnship$_free(ptr)
        }
    }
}
public class PreciseOwnshipRefMut: PreciseOwnshipRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class PreciseOwnshipRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension PreciseOwnshipRef {
    public func latitude() -> Angle {
        Angle(ptr: __swift_bridge__$PreciseOwnship$latitude(ptr))
    }

    public func longitude() -> Angle {
        Angle(ptr: __swift_bridge__$PreciseOwnship$longitude(ptr))
    }

    public func altitude() -> Length {
        Length(ptr: __swift_bridge__$PreciseOwnship$altitude(ptr))
    }

    public func ground_speed() -> Velocity {
        Velocity(ptr: __swift_bridge__$PreciseOwnship$ground_speed(ptr))
    }
}
extension PreciseOwnship: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_PreciseOwnship$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_PreciseOwnship$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: PreciseOwnship) {
        __swift_bridge__$Vec_PreciseOwnship$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_PreciseOwnship$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (PreciseOwnship(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<PreciseOwnshipRef> {
        let pointer = __swift_bridge__$Vec_PreciseOwnship$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return PreciseOwnshipRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<PreciseOwnshipRefMut> {
        let pointer = __swift_bridge__$Vec_PreciseOwnship$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return PreciseOwnshipRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<PreciseOwnshipRef> {
        UnsafePointer<PreciseOwnshipRef>(OpaquePointer(__swift_bridge__$Vec_PreciseOwnship$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_PreciseOwnship$len(vecPtr)
    }
}


public class ForeFlightAHRS: ForeFlightAHRSRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$ForeFlightAHRS$_free(ptr)
        }
    }
}
public class ForeFlightAHRSRefMut: ForeFlightAHRSRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class ForeFlightAHRSRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension ForeFlightAHRSRef {
    public func roll() -> Optional<Angle> {
        { let val = __swift_bridge__$ForeFlightAHRS$roll(ptr); if val != nil { return Angle(ptr: val!) } else { return nil } }()
    }

    public func pitch() -> Optional<Angle> {
        { let val = __swift_bridge__$ForeFlightAHRS$pitch(ptr); if val != nil { return Angle(ptr: val!) } else { return nil } }()
    }

    public func heading_type() -> AHRSHeadingType {
        __swift_bridge__$ForeFlightAHRS$heading_type(ptr).intoSwiftRepr()
    }

    public func heading() -> Optional<Angle> {
        { let val = __swift_bridge__$ForeFlightAHRS$heading(ptr); if val != nil { return Angle(ptr: val!) } else { return nil } }()
    }

    public func indicated_airspeed() -> Optional<Velocity> {
        { let val = __swift_bridge__$ForeFlightAHRS$indicated_airspeed(ptr); if val != nil { return Velocity(ptr: val!) } else { return nil } }()
    }

    public func true_airspeed() -> Optional<Velocity> {
        { let val = __swift_bridge__$ForeFlightAHRS$true_airspeed(ptr); if val != nil { return Velocity(ptr: val!) } else { return nil } }()
    }
}
extension ForeFlightAHRS: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_ForeFlightAHRS$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_ForeFlightAHRS$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: ForeFlightAHRS) {
        __swift_bridge__$Vec_ForeFlightAHRS$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_ForeFlightAHRS$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (ForeFlightAHRS(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<ForeFlightAHRSRef> {
        let pointer = __swift_bridge__$Vec_ForeFlightAHRS$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return ForeFlightAHRSRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<ForeFlightAHRSRefMut> {
        let pointer = __swift_bridge__$Vec_ForeFlightAHRS$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return ForeFlightAHRSRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<ForeFlightAHRSRef> {
        UnsafePointer<ForeFlightAHRSRef>(OpaquePointer(__swift_bridge__$Vec_ForeFlightAHRS$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_ForeFlightAHRS$len(vecPtr)
    }
}


public class VerticalMetrics: VerticalMetricsRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$VerticalMetrics$_free(ptr)
        }
    }
}
public class VerticalMetricsRefMut: VerticalMetricsRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class VerticalMetricsRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension VerticalMetricsRef {
    public func vertical_warning_indicator() -> Bool {
        __swift_bridge__$VerticalMetrics$vertical_warning_indicator(ptr)
    }

    public func vfom() -> Optional<Length> {
        { let val = __swift_bridge__$VerticalMetrics$vfom(ptr); if val != nil { return Length(ptr: val!) } else { return nil } }()
    }
}
extension VerticalMetrics: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_VerticalMetrics$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_VerticalMetrics$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: VerticalMetrics) {
        __swift_bridge__$Vec_VerticalMetrics$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_VerticalMetrics$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (VerticalMetrics(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<VerticalMetricsRef> {
        let pointer = __swift_bridge__$Vec_VerticalMetrics$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return VerticalMetricsRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<VerticalMetricsRefMut> {
        let pointer = __swift_bridge__$Vec_VerticalMetrics$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return VerticalMetricsRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<VerticalMetricsRef> {
        UnsafePointer<VerticalMetricsRef>(OpaquePointer(__swift_bridge__$Vec_VerticalMetrics$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_VerticalMetrics$len(vecPtr)
    }
}


public class OwnshipGeometricAltitude: OwnshipGeometricAltitudeRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$OwnshipGeometricAltitude$_free(ptr)
        }
    }
}
public class OwnshipGeometricAltitudeRefMut: OwnshipGeometricAltitudeRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class OwnshipGeometricAltitudeRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension OwnshipGeometricAltitudeRef {
    public func ownship_geo_altitude() -> Length {
        Length(ptr: __swift_bridge__$OwnshipGeometricAltitude$ownship_geo_altitude(ptr))
    }

    public func vertical_metrics() -> VerticalMetricsRef {
        VerticalMetricsRef(ptr: __swift_bridge__$OwnshipGeometricAltitude$vertical_metrics(ptr))
    }
}
extension OwnshipGeometricAltitude: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_OwnshipGeometricAltitude$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_OwnshipGeometricAltitude$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: OwnshipGeometricAltitude) {
        __swift_bridge__$Vec_OwnshipGeometricAltitude$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_OwnshipGeometricAltitude$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (OwnshipGeometricAltitude(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<OwnshipGeometricAltitudeRef> {
        let pointer = __swift_bridge__$Vec_OwnshipGeometricAltitude$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return OwnshipGeometricAltitudeRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<OwnshipGeometricAltitudeRefMut> {
        let pointer = __swift_bridge__$Vec_OwnshipGeometricAltitude$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return OwnshipGeometricAltitudeRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<OwnshipGeometricAltitudeRef> {
        UnsafePointer<OwnshipGeometricAltitudeRef>(OpaquePointer(__swift_bridge__$Vec_OwnshipGeometricAltitude$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_OwnshipGeometricAltitude$len(vecPtr)
    }
}


public class TrafficReport: TrafficReportRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$TrafficReport$_free(ptr)
        }
    }
}
public class TrafficReportRefMut: TrafficReportRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class TrafficReportRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension TrafficReportRef {
    public func traffic_alert_status() -> TrafficAlertStatus {
        __swift_bridge__$TrafficReport$traffic_alert_status(ptr).intoSwiftRepr()
    }

    public func target_identity() -> TargetIdentity {
        __swift_bridge__$TrafficReport$target_identity(ptr).intoSwiftRepr()
    }

    public func latitude() -> Angle {
        Angle(ptr: __swift_bridge__$TrafficReport$latitude(ptr))
    }

    public func longitude() -> Angle {
        Angle(ptr: __swift_bridge__$TrafficReport$longitude(ptr))
    }

    public func altitude() -> Length {
        Length(ptr: __swift_bridge__$TrafficReport$altitude(ptr))
    }

    public func miscellaneous_indicators() -> MiscellaneousIndicators {
        __swift_bridge__$TrafficReport$miscellaneous_indicators(ptr).intoSwiftRepr()
    }

    public func nic() -> NIC {
        __swift_bridge__$TrafficReport$nic(ptr).intoSwiftRepr()
    }

    public func nacp() -> NACp {
        __swift_bridge__$TrafficReport$nacp(ptr).intoSwiftRepr()
    }

    public func horizontal_velocity() -> Optional<Velocity> {
        { let val = __swift_bridge__$TrafficReport$horizontal_velocity(ptr); if val != nil { return Velocity(ptr: val!) } else { return nil } }()
    }

    public func vertical_velocity() -> Optional<Velocity> {
        { let val = __swift_bridge__$TrafficReport$vertical_velocity(ptr); if val != nil { return Velocity(ptr: val!) } else { return nil } }()
    }

    public func track_heading() -> Angle {
        Angle(ptr: __swift_bridge__$TrafficReport$track_heading(ptr))
    }

    public func emitter_category() -> EmitterCategory {
        __swift_bridge__$TrafficReport$emitter_category(ptr).intoSwiftRepr()
    }

    public func callsign() -> RustString {
        RustString(ptr: __swift_bridge__$TrafficReport$callsign(ptr))
    }

    public func emergency_priority_code() -> EmergencyPriorityCode {
        __swift_bridge__$TrafficReport$emergency_priority_code(ptr).intoSwiftRepr()
    }
}
extension TrafficReport: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_TrafficReport$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_TrafficReport$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: TrafficReport) {
        __swift_bridge__$Vec_TrafficReport$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_TrafficReport$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (TrafficReport(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<TrafficReportRef> {
        let pointer = __swift_bridge__$Vec_TrafficReport$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return TrafficReportRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<TrafficReportRefMut> {
        let pointer = __swift_bridge__$Vec_TrafficReport$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return TrafficReportRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<TrafficReportRef> {
        UnsafePointer<TrafficReportRef>(OpaquePointer(__swift_bridge__$Vec_TrafficReport$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_TrafficReport$len(vecPtr)
    }
}


public class HeightAboveTerrain: HeightAboveTerrainRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$HeightAboveTerrain$_free(ptr)
        }
    }
}
public class HeightAboveTerrainRefMut: HeightAboveTerrainRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class HeightAboveTerrainRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension HeightAboveTerrain: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_HeightAboveTerrain$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_HeightAboveTerrain$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: HeightAboveTerrain) {
        __swift_bridge__$Vec_HeightAboveTerrain$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_HeightAboveTerrain$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (HeightAboveTerrain(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<HeightAboveTerrainRef> {
        let pointer = __swift_bridge__$Vec_HeightAboveTerrain$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return HeightAboveTerrainRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<HeightAboveTerrainRefMut> {
        let pointer = __swift_bridge__$Vec_HeightAboveTerrain$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return HeightAboveTerrainRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<HeightAboveTerrainRef> {
        UnsafePointer<HeightAboveTerrainRef>(OpaquePointer(__swift_bridge__$Vec_HeightAboveTerrain$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_HeightAboveTerrain$len(vecPtr)
    }
}


public class Message: MessageRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$Message$_free(ptr)
        }
    }
}
public class MessageRefMut: MessageRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class MessageRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension MessageRef {
    public func is_heartbeat() -> Bool {
        __swift_bridge__$Message$is_heartbeat(ptr)
    }

    public func is_initialization() -> Bool {
        __swift_bridge__$Message$is_initialization(ptr)
    }

    public func is_height_above_terrain() -> Bool {
        __swift_bridge__$Message$is_height_above_terrain(ptr)
    }

    public func is_ownship() -> Bool {
        __swift_bridge__$Message$is_ownship(ptr)
    }

    public func is_ownship_geometric_altitude() -> Bool {
        __swift_bridge__$Message$is_ownship_geometric_altitude(ptr)
    }

    public func is_traffic() -> Bool {
        __swift_bridge__$Message$is_traffic(ptr)
    }

    public func is_fore_flight_id() -> Bool {
        __swift_bridge__$Message$is_fore_flight_id(ptr)
    }

    public func is_fore_flight_ahrs() -> Bool {
        __swift_bridge__$Message$is_fore_flight_ahrs(ptr)
    }

    public func is_precise_ownship() -> Bool {
        __swift_bridge__$Message$is_precise_ownship(ptr)
    }

    public func heartbeat() -> Optional<Heartbeat> {
        __swift_bridge__$Message$heartbeat(ptr).intoSwiftRepr()
    }

    public func initialization() -> Optional<Initialization> {
        __swift_bridge__$Message$initialization(ptr).intoSwiftRepr()
    }

    public func height_above_terrain() -> Optional<HeightAboveTerrainRef> {
        { let val = __swift_bridge__$Message$height_above_terrain(ptr); if val != nil { return HeightAboveTerrainRef(ptr: val!) } else { return nil } }()
    }

    public func ownship() -> Optional<TrafficReport> {
        { let val = __swift_bridge__$Message$ownship(ptr); if val != nil { return TrafficReport(ptr: val!) } else { return nil } }()
    }

    public func traffic() -> Optional<TrafficReport> {
        { let val = __swift_bridge__$Message$traffic(ptr); if val != nil { return TrafficReport(ptr: val!) } else { return nil } }()
    }

    public func ownship_geometric_altitude() -> Optional<OwnshipGeometricAltitudeRef> {
        { let val = __swift_bridge__$Message$ownship_geometric_altitude(ptr); if val != nil { return OwnshipGeometricAltitudeRef(ptr: val!) } else { return nil } }()
    }

    public func fore_flight_id() -> Optional<ForeFlightID> {
        __swift_bridge__$Message$fore_flight_id(ptr).intoSwiftRepr()
    }

    public func fore_flight_ahrs() -> Optional<ForeFlightAHRSRef> {
        { let val = __swift_bridge__$Message$fore_flight_ahrs(ptr); if val != nil { return ForeFlightAHRSRef(ptr: val!) } else { return nil } }()
    }

    public func precise_ownship() -> Optional<PreciseOwnshipRef> {
        { let val = __swift_bridge__$Message$precise_ownship(ptr); if val != nil { return PreciseOwnshipRef(ptr: val!) } else { return nil } }()
    }
}
extension Message: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_Message$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_Message$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Message) {
        __swift_bridge__$Vec_Message$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_Message$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (Message(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<MessageRef> {
        let pointer = __swift_bridge__$Vec_Message$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return MessageRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<MessageRefMut> {
        let pointer = __swift_bridge__$Vec_Message$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return MessageRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<MessageRef> {
        UnsafePointer<MessageRef>(OpaquePointer(__swift_bridge__$Vec_Message$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_Message$len(vecPtr)
    }
}


public class MessageResult: MessageResultRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$MessageResult$_free(ptr)
        }
    }
}
public class MessageResultRefMut: MessageResultRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class MessageResultRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension MessageResultRef {
    public func is_ok() -> Bool {
        __swift_bridge__$MessageResult$is_ok(ptr)
    }

    public func is_err() -> Bool {
        __swift_bridge__$MessageResult$is_err(ptr)
    }

    public func ok() -> Optional<Message> {
        { let val = __swift_bridge__$MessageResult$ok(ptr); if val != nil { return Message(ptr: val!) } else { return nil } }()
    }

    public func err() -> RustString {
        RustString(ptr: __swift_bridge__$MessageResult$err(ptr))
    }

    public func unwrap() throws -> Message {
        try { let val = __swift_bridge__$MessageResult$unwrap(ptr); if val.is_ok { return Message(ptr: val.ok_or_err!) } else { throw RustString(ptr: val.ok_or_err!) } }()
    }
}
extension MessageResult: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_MessageResult$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_MessageResult$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: MessageResult) {
        __swift_bridge__$Vec_MessageResult$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_MessageResult$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (MessageResult(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<MessageResultRef> {
        let pointer = __swift_bridge__$Vec_MessageResult$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return MessageResultRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<MessageResultRefMut> {
        let pointer = __swift_bridge__$Vec_MessageResult$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return MessageResultRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<MessageResultRef> {
        UnsafePointer<MessageResultRef>(OpaquePointer(__swift_bridge__$Vec_MessageResult$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_MessageResult$len(vecPtr)
    }
}


public class Velocity: VelocityRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$Velocity$_free(ptr)
        }
    }
}
public class VelocityRefMut: VelocityRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class VelocityRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension VelocityRef {
    public func meters_per_second() -> Double {
        __swift_bridge__$Velocity$meters_per_second(ptr)
    }

    public func kilometers_per_hour() -> Double {
        __swift_bridge__$Velocity$kilometers_per_hour(ptr)
    }

    public func feet_per_second() -> Double {
        __swift_bridge__$Velocity$feet_per_second(ptr)
    }

    public func feet_per_minute() -> Double {
        __swift_bridge__$Velocity$feet_per_minute(ptr)
    }

    public func miles_per_hour() -> Double {
        __swift_bridge__$Velocity$miles_per_hour(ptr)
    }

    public func knots() -> Double {
        __swift_bridge__$Velocity$knots(ptr)
    }
}
extension Velocity: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_Velocity$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_Velocity$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Velocity) {
        __swift_bridge__$Vec_Velocity$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_Velocity$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (Velocity(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<VelocityRef> {
        let pointer = __swift_bridge__$Vec_Velocity$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return VelocityRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<VelocityRefMut> {
        let pointer = __swift_bridge__$Vec_Velocity$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return VelocityRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<VelocityRef> {
        UnsafePointer<VelocityRef>(OpaquePointer(__swift_bridge__$Vec_Velocity$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_Velocity$len(vecPtr)
    }
}


public class Length: LengthRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$Length$_free(ptr)
        }
    }
}
public class LengthRefMut: LengthRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class LengthRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension LengthRef {
    public func meters() -> Double {
        __swift_bridge__$Length$meters(ptr)
    }

    public func kilometers() -> Double {
        __swift_bridge__$Length$kilometers(ptr)
    }

    public func feet() -> Double {
        __swift_bridge__$Length$feet(ptr)
    }

    public func nautical_miles() -> Double {
        __swift_bridge__$Length$nautical_miles(ptr)
    }
}
extension Length: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_Length$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_Length$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Length) {
        __swift_bridge__$Vec_Length$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_Length$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (Length(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<LengthRef> {
        let pointer = __swift_bridge__$Vec_Length$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return LengthRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<LengthRefMut> {
        let pointer = __swift_bridge__$Vec_Length$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return LengthRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<LengthRef> {
        UnsafePointer<LengthRef>(OpaquePointer(__swift_bridge__$Vec_Length$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_Length$len(vecPtr)
    }
}


public class Angle: AngleRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$Angle$_free(ptr)
        }
    }
}
public class AngleRefMut: AngleRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class AngleRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension AngleRef {
    public func radians() -> Double {
        __swift_bridge__$Angle$radians(ptr)
    }

    public func degrees() -> Double {
        __swift_bridge__$Angle$degrees(ptr)
    }

    public func seconds() -> Double {
        __swift_bridge__$Angle$seconds(ptr)
    }

    public func minutes() -> Double {
        __swift_bridge__$Angle$minutes(ptr)
    }

    public func revolutions() -> Double {
        __swift_bridge__$Angle$revolutions(ptr)
    }
}
extension Angle: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_Angle$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_Angle$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: Angle) {
        __swift_bridge__$Vec_Angle$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_Angle$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (Angle(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<AngleRef> {
        let pointer = __swift_bridge__$Vec_Angle$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return AngleRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<AngleRefMut> {
        let pointer = __swift_bridge__$Vec_Angle$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return AngleRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfAsPtr(vecPtr: UnsafeMutableRawPointer) -> UnsafePointer<AngleRef> {
        UnsafePointer<AngleRef>(OpaquePointer(__swift_bridge__$Vec_Angle$as_ptr(vecPtr)))
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_Angle$len(vecPtr)
    }
}



