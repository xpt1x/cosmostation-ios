// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: stride/records/genesis.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Stride_Records_UserRedemptionRecord {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// {chain_id}.{epoch}.{sender}
  var id: String = String()

  var sender: String = String()

  var receiver: String = String()

  var amount: UInt64 = 0

  var denom: String = String()

  var hostZoneID: String = String()

  var epochNumber: UInt64 = 0

  var claimIsPending: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Params defines the parameters for the module.
struct Stride_Records_Params {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Stride_Records_RecordsPacketData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var packet: Stride_Records_RecordsPacketData.OneOf_Packet? = nil

  /// this line is used by starport scaffolding # ibc/packet/proto/field
  var noData: Stride_Records_NoData {
    get {
      if case .noData(let v)? = packet {return v}
      return Stride_Records_NoData()
    }
    set {packet = .noData(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Packet: Equatable {
    /// this line is used by starport scaffolding # ibc/packet/proto/field
    case noData(Stride_Records_NoData)

  #if !swift(>=4.1)
    static func ==(lhs: Stride_Records_RecordsPacketData.OneOf_Packet, rhs: Stride_Records_RecordsPacketData.OneOf_Packet) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.noData, .noData): return {
        guard case .noData(let l) = lhs, case .noData(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  init() {}
}

struct Stride_Records_NoData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Stride_Records_DepositRecord {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: UInt64 = 0

  var amount: Int64 = 0

  var denom: String = String()

  var hostZoneID: String = String()

  var status: Stride_Records_DepositRecord.Status = .transferQueue

  var depositEpochNumber: UInt64 = 0

  var source: Stride_Records_DepositRecord.Source = .stride

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum Status: SwiftProtobuf.Enum {
    typealias RawValue = Int

    /// in transfer queue to be sent to the delegation ICA
    case transferQueue // = 0

    /// transfer in progress (IBC packet sent, ack not received)
    case transferInProgress // = 2

    /// in staking queue on delegation ICA
    case delegationQueue // = 1

    /// staking in progress (ICA packet sent, ack not received)
    case delegationInProgress // = 3
    case UNRECOGNIZED(Int)

    init() {
      self = .transferQueue
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .transferQueue
      case 1: self = .delegationQueue
      case 2: self = .transferInProgress
      case 3: self = .delegationInProgress
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .transferQueue: return 0
      case .delegationQueue: return 1
      case .transferInProgress: return 2
      case .delegationInProgress: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  enum Source: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case stride // = 0
    case withdrawalIca // = 1
    case UNRECOGNIZED(Int)

    init() {
      self = .stride
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .stride
      case 1: self = .withdrawalIca
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .stride: return 0
      case .withdrawalIca: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension Stride_Records_DepositRecord.Status: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Stride_Records_DepositRecord.Status] = [
    .transferQueue,
    .transferInProgress,
    .delegationQueue,
    .delegationInProgress,
  ]
}

extension Stride_Records_DepositRecord.Source: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Stride_Records_DepositRecord.Source] = [
    .stride,
    .withdrawalIca,
  ]
}

#endif  // swift(>=4.2)

struct Stride_Records_HostZoneUnbonding {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var stTokenAmount: UInt64 = 0

  var nativeTokenAmount: UInt64 = 0

  var denom: String = String()

  var hostZoneID: String = String()

  var unbondingTime: UInt64 = 0

  var status: Stride_Records_HostZoneUnbonding.Status = .unbondingQueue

  var userRedemptionRecords: [String] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum Status: SwiftProtobuf.Enum {
    typealias RawValue = Int

    /// tokens bonded on delegate account
    case unbondingQueue // = 0
    case unbondingInProgress // = 3

    /// unbonding completed on delegate account
    case exitTransferQueue // = 1
    case exitTransferInProgress // = 4

    /// transfer success
    case claimable // = 2
    case UNRECOGNIZED(Int)

    init() {
      self = .unbondingQueue
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unbondingQueue
      case 1: self = .exitTransferQueue
      case 2: self = .claimable
      case 3: self = .unbondingInProgress
      case 4: self = .exitTransferInProgress
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .unbondingQueue: return 0
      case .exitTransferQueue: return 1
      case .claimable: return 2
      case .unbondingInProgress: return 3
      case .exitTransferInProgress: return 4
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension Stride_Records_HostZoneUnbonding.Status: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Stride_Records_HostZoneUnbonding.Status] = [
    .unbondingQueue,
    .unbondingInProgress,
    .exitTransferQueue,
    .exitTransferInProgress,
    .claimable,
  ]
}

#endif  // swift(>=4.2)

struct Stride_Records_EpochUnbondingRecord {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var epochNumber: UInt64 = 0

  var hostZoneUnbondings: [Stride_Records_HostZoneUnbonding] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// GenesisState defines the recordπs module's genesis state.
/// next id: 9
struct Stride_Records_GenesisState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var params: Stride_Records_Params {
    get {return _params ?? Stride_Records_Params()}
    set {_params = newValue}
  }
  /// Returns true if `params` has been explicitly set.
  var hasParams: Bool {return self._params != nil}
  /// Clears the value of `params`. Subsequent reads from it will return its default value.
  mutating func clearParams() {self._params = nil}

  var portID: String = String()

  var userRedemptionRecordList: [Stride_Records_UserRedemptionRecord] = []

  var userRedemptionRecordCount: UInt64 = 0

  var epochUnbondingRecordList: [Stride_Records_EpochUnbondingRecord] = []

  var depositRecordList: [Stride_Records_DepositRecord] = []

  /// this line is used by starport scaffolding # genesis/proto/state
  var depositRecordCount: UInt64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _params: Stride_Records_Params? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "stride.records"

extension Stride_Records_UserRedemptionRecord: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".UserRedemptionRecord"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "sender"),
    3: .same(proto: "receiver"),
    4: .same(proto: "amount"),
    5: .same(proto: "denom"),
    6: .standard(proto: "host_zone_id"),
    7: .standard(proto: "epoch_number"),
    8: .standard(proto: "claim_is_pending"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.sender) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.receiver) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self.amount) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.denom) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.hostZoneID) }()
      case 7: try { try decoder.decodeSingularUInt64Field(value: &self.epochNumber) }()
      case 8: try { try decoder.decodeSingularBoolField(value: &self.claimIsPending) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.sender.isEmpty {
      try visitor.visitSingularStringField(value: self.sender, fieldNumber: 2)
    }
    if !self.receiver.isEmpty {
      try visitor.visitSingularStringField(value: self.receiver, fieldNumber: 3)
    }
    if self.amount != 0 {
      try visitor.visitSingularUInt64Field(value: self.amount, fieldNumber: 4)
    }
    if !self.denom.isEmpty {
      try visitor.visitSingularStringField(value: self.denom, fieldNumber: 5)
    }
    if !self.hostZoneID.isEmpty {
      try visitor.visitSingularStringField(value: self.hostZoneID, fieldNumber: 6)
    }
    if self.epochNumber != 0 {
      try visitor.visitSingularUInt64Field(value: self.epochNumber, fieldNumber: 7)
    }
    if self.claimIsPending != false {
      try visitor.visitSingularBoolField(value: self.claimIsPending, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Records_UserRedemptionRecord, rhs: Stride_Records_UserRedemptionRecord) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.sender != rhs.sender {return false}
    if lhs.receiver != rhs.receiver {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.denom != rhs.denom {return false}
    if lhs.hostZoneID != rhs.hostZoneID {return false}
    if lhs.epochNumber != rhs.epochNumber {return false}
    if lhs.claimIsPending != rhs.claimIsPending {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Records_Params: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Params"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Records_Params, rhs: Stride_Records_Params) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Records_RecordsPacketData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".RecordsPacketData"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "no_data"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Stride_Records_NoData?
        var hadOneofValue = false
        if let current = self.packet {
          hadOneofValue = true
          if case .noData(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.packet = .noData(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if case .noData(let v)? = self.packet {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Records_RecordsPacketData, rhs: Stride_Records_RecordsPacketData) -> Bool {
    if lhs.packet != rhs.packet {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Records_NoData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".NoData"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Records_NoData, rhs: Stride_Records_NoData) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Records_DepositRecord: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DepositRecord"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "amount"),
    3: .same(proto: "denom"),
    4: .standard(proto: "host_zone_id"),
    6: .same(proto: "status"),
    7: .standard(proto: "deposit_epoch_number"),
    8: .same(proto: "source"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.amount) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.denom) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.hostZoneID) }()
      case 6: try { try decoder.decodeSingularEnumField(value: &self.status) }()
      case 7: try { try decoder.decodeSingularUInt64Field(value: &self.depositEpochNumber) }()
      case 8: try { try decoder.decodeSingularEnumField(value: &self.source) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularUInt64Field(value: self.id, fieldNumber: 1)
    }
    if self.amount != 0 {
      try visitor.visitSingularInt64Field(value: self.amount, fieldNumber: 2)
    }
    if !self.denom.isEmpty {
      try visitor.visitSingularStringField(value: self.denom, fieldNumber: 3)
    }
    if !self.hostZoneID.isEmpty {
      try visitor.visitSingularStringField(value: self.hostZoneID, fieldNumber: 4)
    }
    if self.status != .transferQueue {
      try visitor.visitSingularEnumField(value: self.status, fieldNumber: 6)
    }
    if self.depositEpochNumber != 0 {
      try visitor.visitSingularUInt64Field(value: self.depositEpochNumber, fieldNumber: 7)
    }
    if self.source != .stride {
      try visitor.visitSingularEnumField(value: self.source, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Records_DepositRecord, rhs: Stride_Records_DepositRecord) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.denom != rhs.denom {return false}
    if lhs.hostZoneID != rhs.hostZoneID {return false}
    if lhs.status != rhs.status {return false}
    if lhs.depositEpochNumber != rhs.depositEpochNumber {return false}
    if lhs.source != rhs.source {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Records_DepositRecord.Status: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TRANSFER_QUEUE"),
    1: .same(proto: "DELEGATION_QUEUE"),
    2: .same(proto: "TRANSFER_IN_PROGRESS"),
    3: .same(proto: "DELEGATION_IN_PROGRESS"),
  ]
}

extension Stride_Records_DepositRecord.Source: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STRIDE"),
    1: .same(proto: "WITHDRAWAL_ICA"),
  ]
}

extension Stride_Records_HostZoneUnbonding: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".HostZoneUnbonding"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "st_token_amount"),
    2: .standard(proto: "native_token_amount"),
    3: .same(proto: "denom"),
    4: .standard(proto: "host_zone_id"),
    5: .standard(proto: "unbonding_time"),
    6: .same(proto: "status"),
    7: .standard(proto: "user_redemption_records"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.stTokenAmount) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.nativeTokenAmount) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.denom) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.hostZoneID) }()
      case 5: try { try decoder.decodeSingularUInt64Field(value: &self.unbondingTime) }()
      case 6: try { try decoder.decodeSingularEnumField(value: &self.status) }()
      case 7: try { try decoder.decodeRepeatedStringField(value: &self.userRedemptionRecords) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.stTokenAmount != 0 {
      try visitor.visitSingularUInt64Field(value: self.stTokenAmount, fieldNumber: 1)
    }
    if self.nativeTokenAmount != 0 {
      try visitor.visitSingularUInt64Field(value: self.nativeTokenAmount, fieldNumber: 2)
    }
    if !self.denom.isEmpty {
      try visitor.visitSingularStringField(value: self.denom, fieldNumber: 3)
    }
    if !self.hostZoneID.isEmpty {
      try visitor.visitSingularStringField(value: self.hostZoneID, fieldNumber: 4)
    }
    if self.unbondingTime != 0 {
      try visitor.visitSingularUInt64Field(value: self.unbondingTime, fieldNumber: 5)
    }
    if self.status != .unbondingQueue {
      try visitor.visitSingularEnumField(value: self.status, fieldNumber: 6)
    }
    if !self.userRedemptionRecords.isEmpty {
      try visitor.visitRepeatedStringField(value: self.userRedemptionRecords, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Records_HostZoneUnbonding, rhs: Stride_Records_HostZoneUnbonding) -> Bool {
    if lhs.stTokenAmount != rhs.stTokenAmount {return false}
    if lhs.nativeTokenAmount != rhs.nativeTokenAmount {return false}
    if lhs.denom != rhs.denom {return false}
    if lhs.hostZoneID != rhs.hostZoneID {return false}
    if lhs.unbondingTime != rhs.unbondingTime {return false}
    if lhs.status != rhs.status {return false}
    if lhs.userRedemptionRecords != rhs.userRedemptionRecords {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Records_HostZoneUnbonding.Status: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNBONDING_QUEUE"),
    1: .same(proto: "EXIT_TRANSFER_QUEUE"),
    2: .same(proto: "CLAIMABLE"),
    3: .same(proto: "UNBONDING_IN_PROGRESS"),
    4: .same(proto: "EXIT_TRANSFER_IN_PROGRESS"),
  ]
}

extension Stride_Records_EpochUnbondingRecord: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".EpochUnbondingRecord"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "epoch_number"),
    3: .standard(proto: "host_zone_unbondings"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.epochNumber) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.hostZoneUnbondings) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.epochNumber != 0 {
      try visitor.visitSingularUInt64Field(value: self.epochNumber, fieldNumber: 1)
    }
    if !self.hostZoneUnbondings.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.hostZoneUnbondings, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Records_EpochUnbondingRecord, rhs: Stride_Records_EpochUnbondingRecord) -> Bool {
    if lhs.epochNumber != rhs.epochNumber {return false}
    if lhs.hostZoneUnbondings != rhs.hostZoneUnbondings {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Records_GenesisState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GenesisState"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "params"),
    2: .standard(proto: "port_id"),
    3: .standard(proto: "user_redemption_record_list"),
    4: .standard(proto: "user_redemption_record_count"),
    5: .standard(proto: "epoch_unbonding_record_list"),
    7: .standard(proto: "deposit_record_list"),
    8: .standard(proto: "deposit_record_count"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._params) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.portID) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.userRedemptionRecordList) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self.userRedemptionRecordCount) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.epochUnbondingRecordList) }()
      case 7: try { try decoder.decodeRepeatedMessageField(value: &self.depositRecordList) }()
      case 8: try { try decoder.decodeSingularUInt64Field(value: &self.depositRecordCount) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._params {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.portID.isEmpty {
      try visitor.visitSingularStringField(value: self.portID, fieldNumber: 2)
    }
    if !self.userRedemptionRecordList.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.userRedemptionRecordList, fieldNumber: 3)
    }
    if self.userRedemptionRecordCount != 0 {
      try visitor.visitSingularUInt64Field(value: self.userRedemptionRecordCount, fieldNumber: 4)
    }
    if !self.epochUnbondingRecordList.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.epochUnbondingRecordList, fieldNumber: 5)
    }
    if !self.depositRecordList.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.depositRecordList, fieldNumber: 7)
    }
    if self.depositRecordCount != 0 {
      try visitor.visitSingularUInt64Field(value: self.depositRecordCount, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Records_GenesisState, rhs: Stride_Records_GenesisState) -> Bool {
    if lhs._params != rhs._params {return false}
    if lhs.portID != rhs.portID {return false}
    if lhs.userRedemptionRecordList != rhs.userRedemptionRecordList {return false}
    if lhs.userRedemptionRecordCount != rhs.userRedemptionRecordCount {return false}
    if lhs.epochUnbondingRecordList != rhs.epochUnbondingRecordList {return false}
    if lhs.depositRecordList != rhs.depositRecordList {return false}
    if lhs.depositRecordCount != rhs.depositRecordCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
