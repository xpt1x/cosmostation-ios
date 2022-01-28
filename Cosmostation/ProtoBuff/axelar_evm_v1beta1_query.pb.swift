// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: axelar/evm/v1beta1/query.proto
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

/// DepositQueryParams describe the parameters used to query for an EVM
/// deposit address
struct Axelar_Evm_V1beta1_DepositQueryParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var address: String = String()

  var asset: String = String()

  var chain: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Axelar_Evm_V1beta1_QueryBatchedCommandsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: String = String()

  var data: String = String()

  var status: Axelar_Evm_V1beta1_BatchedCommandsStatus = .unspecified

  var keyID: String = String()

  var signature: [String] = []

  var executeData: String = String()

  var prevBatchedCommandsID: String = String()

  var commandIds: [String] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Axelar_Evm_V1beta1_QueryAddressResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var keyID: String = String()

  var address: Axelar_Evm_V1beta1_QueryAddressResponse.OneOf_Address? = nil

  var multisigAddresses: Axelar_Evm_V1beta1_QueryAddressResponse.MultisigAddresses {
    get {
      if case .multisigAddresses(let v)? = address {return v}
      return Axelar_Evm_V1beta1_QueryAddressResponse.MultisigAddresses()
    }
    set {address = .multisigAddresses(newValue)}
  }

  var thresholdAddress: Axelar_Evm_V1beta1_QueryAddressResponse.ThresholdAddress {
    get {
      if case .thresholdAddress(let v)? = address {return v}
      return Axelar_Evm_V1beta1_QueryAddressResponse.ThresholdAddress()
    }
    set {address = .thresholdAddress(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Address: Equatable {
    case multisigAddresses(Axelar_Evm_V1beta1_QueryAddressResponse.MultisigAddresses)
    case thresholdAddress(Axelar_Evm_V1beta1_QueryAddressResponse.ThresholdAddress)

  #if !swift(>=4.1)
    static func ==(lhs: Axelar_Evm_V1beta1_QueryAddressResponse.OneOf_Address, rhs: Axelar_Evm_V1beta1_QueryAddressResponse.OneOf_Address) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.multisigAddresses, .multisigAddresses): return {
        guard case .multisigAddresses(let l) = lhs, case .multisigAddresses(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.thresholdAddress, .thresholdAddress): return {
        guard case .thresholdAddress(let l) = lhs, case .thresholdAddress(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  struct MultisigAddresses {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var addresses: [String] = []

    var threshold: UInt32 = 0

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  struct ThresholdAddress {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var address: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  init() {}
}

struct Axelar_Evm_V1beta1_QueryTokenAddressResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var address: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Axelar_Evm_V1beta1_QueryDepositStateParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var txID: Data = Data()

  var burnerAddress: Data = Data()

  var amount: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Axelar_Evm_V1beta1_QueryDepositStateResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var log: String = String()

  var status: Axelar_Evm_V1beta1_DepositStatus = .unspecified

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Axelar_Evm_V1beta1_QueryBurnerAddressResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var address: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Axelar_Evm_V1beta1_QueryChainsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var chains: [String] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Axelar_Evm_V1beta1_QueryPendingCommandsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var commands: [Axelar_Evm_V1beta1_QueryCommandResponse] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Axelar_Evm_V1beta1_QueryCommandResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: String = String()

  var type: String = String()

  var params: Dictionary<String,String> = [:]

  var keyID: String = String()

  var maxGasCost: UInt32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Axelar_Evm_V1beta1_BurnerInfoRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var address: Data = Data()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Axelar_Evm_V1beta1_BurnerInfoResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var chain: String = String()

  var burnerInfo: Axelar_Evm_V1beta1_BurnerInfo {
    get {return _burnerInfo ?? Axelar_Evm_V1beta1_BurnerInfo()}
    set {_burnerInfo = newValue}
  }
  /// Returns true if `burnerInfo` has been explicitly set.
  var hasBurnerInfo: Bool {return self._burnerInfo != nil}
  /// Clears the value of `burnerInfo`. Subsequent reads from it will return its default value.
  mutating func clearBurnerInfo() {self._burnerInfo = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _burnerInfo: Axelar_Evm_V1beta1_BurnerInfo? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "axelar.evm.v1beta1"

extension Axelar_Evm_V1beta1_DepositQueryParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DepositQueryParams"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
    2: .same(proto: "asset"),
    3: .same(proto: "chain"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.address) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.asset) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.chain) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 1)
    }
    if !self.asset.isEmpty {
      try visitor.visitSingularStringField(value: self.asset, fieldNumber: 2)
    }
    if !self.chain.isEmpty {
      try visitor.visitSingularStringField(value: self.chain, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Axelar_Evm_V1beta1_DepositQueryParams, rhs: Axelar_Evm_V1beta1_DepositQueryParams) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs.asset != rhs.asset {return false}
    if lhs.chain != rhs.chain {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Axelar_Evm_V1beta1_QueryBatchedCommandsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryBatchedCommandsResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "data"),
    3: .same(proto: "status"),
    4: .standard(proto: "key_id"),
    5: .same(proto: "signature"),
    6: .standard(proto: "execute_data"),
    7: .standard(proto: "prev_batched_commands_id"),
    8: .standard(proto: "command_ids"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.data) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.status) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.keyID) }()
      case 5: try { try decoder.decodeRepeatedStringField(value: &self.signature) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.executeData) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.prevBatchedCommandsID) }()
      case 8: try { try decoder.decodeRepeatedStringField(value: &self.commandIds) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.data.isEmpty {
      try visitor.visitSingularStringField(value: self.data, fieldNumber: 2)
    }
    if self.status != .unspecified {
      try visitor.visitSingularEnumField(value: self.status, fieldNumber: 3)
    }
    if !self.keyID.isEmpty {
      try visitor.visitSingularStringField(value: self.keyID, fieldNumber: 4)
    }
    if !self.signature.isEmpty {
      try visitor.visitRepeatedStringField(value: self.signature, fieldNumber: 5)
    }
    if !self.executeData.isEmpty {
      try visitor.visitSingularStringField(value: self.executeData, fieldNumber: 6)
    }
    if !self.prevBatchedCommandsID.isEmpty {
      try visitor.visitSingularStringField(value: self.prevBatchedCommandsID, fieldNumber: 7)
    }
    if !self.commandIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.commandIds, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Axelar_Evm_V1beta1_QueryBatchedCommandsResponse, rhs: Axelar_Evm_V1beta1_QueryBatchedCommandsResponse) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.data != rhs.data {return false}
    if lhs.status != rhs.status {return false}
    if lhs.keyID != rhs.keyID {return false}
    if lhs.signature != rhs.signature {return false}
    if lhs.executeData != rhs.executeData {return false}
    if lhs.prevBatchedCommandsID != rhs.prevBatchedCommandsID {return false}
    if lhs.commandIds != rhs.commandIds {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Axelar_Evm_V1beta1_QueryAddressResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryAddressResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "key_id"),
    2: .standard(proto: "multisig_addresses"),
    3: .standard(proto: "threshold_address"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.keyID) }()
      case 2: try {
        var v: Axelar_Evm_V1beta1_QueryAddressResponse.MultisigAddresses?
        var hadOneofValue = false
        if let current = self.address {
          hadOneofValue = true
          if case .multisigAddresses(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.address = .multisigAddresses(v)
        }
      }()
      case 3: try {
        var v: Axelar_Evm_V1beta1_QueryAddressResponse.ThresholdAddress?
        var hadOneofValue = false
        if let current = self.address {
          hadOneofValue = true
          if case .thresholdAddress(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.address = .thresholdAddress(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.keyID.isEmpty {
      try visitor.visitSingularStringField(value: self.keyID, fieldNumber: 1)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.address {
    case .multisigAddresses?: try {
      guard case .multisigAddresses(let v)? = self.address else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .thresholdAddress?: try {
      guard case .thresholdAddress(let v)? = self.address else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Axelar_Evm_V1beta1_QueryAddressResponse, rhs: Axelar_Evm_V1beta1_QueryAddressResponse) -> Bool {
    if lhs.keyID != rhs.keyID {return false}
    if lhs.address != rhs.address {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Axelar_Evm_V1beta1_QueryAddressResponse.MultisigAddresses: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Axelar_Evm_V1beta1_QueryAddressResponse.protoMessageName + ".MultisigAddresses"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "addresses"),
    2: .same(proto: "threshold"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.addresses) }()
      case 2: try { try decoder.decodeSingularUInt32Field(value: &self.threshold) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.addresses.isEmpty {
      try visitor.visitRepeatedStringField(value: self.addresses, fieldNumber: 1)
    }
    if self.threshold != 0 {
      try visitor.visitSingularUInt32Field(value: self.threshold, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Axelar_Evm_V1beta1_QueryAddressResponse.MultisigAddresses, rhs: Axelar_Evm_V1beta1_QueryAddressResponse.MultisigAddresses) -> Bool {
    if lhs.addresses != rhs.addresses {return false}
    if lhs.threshold != rhs.threshold {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Axelar_Evm_V1beta1_QueryAddressResponse.ThresholdAddress: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Axelar_Evm_V1beta1_QueryAddressResponse.protoMessageName + ".ThresholdAddress"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.address) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Axelar_Evm_V1beta1_QueryAddressResponse.ThresholdAddress, rhs: Axelar_Evm_V1beta1_QueryAddressResponse.ThresholdAddress) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Axelar_Evm_V1beta1_QueryTokenAddressResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryTokenAddressResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.address) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Axelar_Evm_V1beta1_QueryTokenAddressResponse, rhs: Axelar_Evm_V1beta1_QueryTokenAddressResponse) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Axelar_Evm_V1beta1_QueryDepositStateParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryDepositStateParams"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "tx_id"),
    2: .standard(proto: "burner_address"),
    3: .same(proto: "amount"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.txID) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.burnerAddress) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.amount) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.txID.isEmpty {
      try visitor.visitSingularBytesField(value: self.txID, fieldNumber: 1)
    }
    if !self.burnerAddress.isEmpty {
      try visitor.visitSingularBytesField(value: self.burnerAddress, fieldNumber: 2)
    }
    if !self.amount.isEmpty {
      try visitor.visitSingularStringField(value: self.amount, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Axelar_Evm_V1beta1_QueryDepositStateParams, rhs: Axelar_Evm_V1beta1_QueryDepositStateParams) -> Bool {
    if lhs.txID != rhs.txID {return false}
    if lhs.burnerAddress != rhs.burnerAddress {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Axelar_Evm_V1beta1_QueryDepositStateResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryDepositStateResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "log"),
    2: .same(proto: "status"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.log) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.status) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.log.isEmpty {
      try visitor.visitSingularStringField(value: self.log, fieldNumber: 1)
    }
    if self.status != .unspecified {
      try visitor.visitSingularEnumField(value: self.status, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Axelar_Evm_V1beta1_QueryDepositStateResponse, rhs: Axelar_Evm_V1beta1_QueryDepositStateResponse) -> Bool {
    if lhs.log != rhs.log {return false}
    if lhs.status != rhs.status {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Axelar_Evm_V1beta1_QueryBurnerAddressResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryBurnerAddressResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.address) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Axelar_Evm_V1beta1_QueryBurnerAddressResponse, rhs: Axelar_Evm_V1beta1_QueryBurnerAddressResponse) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Axelar_Evm_V1beta1_QueryChainsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryChainsResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "chains"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.chains) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.chains.isEmpty {
      try visitor.visitRepeatedStringField(value: self.chains, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Axelar_Evm_V1beta1_QueryChainsResponse, rhs: Axelar_Evm_V1beta1_QueryChainsResponse) -> Bool {
    if lhs.chains != rhs.chains {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Axelar_Evm_V1beta1_QueryPendingCommandsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryPendingCommandsResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "commands"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.commands) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.commands.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.commands, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Axelar_Evm_V1beta1_QueryPendingCommandsResponse, rhs: Axelar_Evm_V1beta1_QueryPendingCommandsResponse) -> Bool {
    if lhs.commands != rhs.commands {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Axelar_Evm_V1beta1_QueryCommandResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryCommandResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "type"),
    3: .same(proto: "params"),
    4: .standard(proto: "key_id"),
    5: .standard(proto: "max_gas_cost"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.type) }()
      case 3: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.params) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.keyID) }()
      case 5: try { try decoder.decodeSingularUInt32Field(value: &self.maxGasCost) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 2)
    }
    if !self.params.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.params, fieldNumber: 3)
    }
    if !self.keyID.isEmpty {
      try visitor.visitSingularStringField(value: self.keyID, fieldNumber: 4)
    }
    if self.maxGasCost != 0 {
      try visitor.visitSingularUInt32Field(value: self.maxGasCost, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Axelar_Evm_V1beta1_QueryCommandResponse, rhs: Axelar_Evm_V1beta1_QueryCommandResponse) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.type != rhs.type {return false}
    if lhs.params != rhs.params {return false}
    if lhs.keyID != rhs.keyID {return false}
    if lhs.maxGasCost != rhs.maxGasCost {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Axelar_Evm_V1beta1_BurnerInfoRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".BurnerInfoRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.address) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitSingularBytesField(value: self.address, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Axelar_Evm_V1beta1_BurnerInfoRequest, rhs: Axelar_Evm_V1beta1_BurnerInfoRequest) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Axelar_Evm_V1beta1_BurnerInfoResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".BurnerInfoResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "chain"),
    2: .standard(proto: "burner_info"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.chain) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._burnerInfo) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.chain.isEmpty {
      try visitor.visitSingularStringField(value: self.chain, fieldNumber: 1)
    }
    if let v = self._burnerInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Axelar_Evm_V1beta1_BurnerInfoResponse, rhs: Axelar_Evm_V1beta1_BurnerInfoResponse) -> Bool {
    if lhs.chain != rhs.chain {return false}
    if lhs._burnerInfo != rhs._burnerInfo {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
