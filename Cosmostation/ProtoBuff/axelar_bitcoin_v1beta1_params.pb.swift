// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: axelar/bitcoin/v1beta1/params.proto
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

struct Axelar_Bitcoin_V1beta1_Params {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var network: Axelar_Bitcoin_V1beta1_Network {
    get {return _storage._network ?? Axelar_Bitcoin_V1beta1_Network()}
    set {_uniqueStorage()._network = newValue}
  }
  /// Returns true if `network` has been explicitly set.
  var hasNetwork: Bool {return _storage._network != nil}
  /// Clears the value of `network`. Subsequent reads from it will return its default value.
  mutating func clearNetwork() {_uniqueStorage()._network = nil}

  var confirmationHeight: UInt64 {
    get {return _storage._confirmationHeight}
    set {_uniqueStorage()._confirmationHeight = newValue}
  }

  var revoteLockingPeriod: Int64 {
    get {return _storage._revoteLockingPeriod}
    set {_uniqueStorage()._revoteLockingPeriod = newValue}
  }

  var sigCheckInterval: Int64 {
    get {return _storage._sigCheckInterval}
    set {_uniqueStorage()._sigCheckInterval = newValue}
  }

  var minOutputAmount: Cosmos_Base_V1beta1_DecCoin {
    get {return _storage._minOutputAmount ?? Cosmos_Base_V1beta1_DecCoin()}
    set {_uniqueStorage()._minOutputAmount = newValue}
  }
  /// Returns true if `minOutputAmount` has been explicitly set.
  var hasMinOutputAmount: Bool {return _storage._minOutputAmount != nil}
  /// Clears the value of `minOutputAmount`. Subsequent reads from it will return its default value.
  mutating func clearMinOutputAmount() {_uniqueStorage()._minOutputAmount = nil}

  var maxInputCount: Int64 {
    get {return _storage._maxInputCount}
    set {_uniqueStorage()._maxInputCount = newValue}
  }

  var maxSecondaryOutputAmount: Cosmos_Base_V1beta1_DecCoin {
    get {return _storage._maxSecondaryOutputAmount ?? Cosmos_Base_V1beta1_DecCoin()}
    set {_uniqueStorage()._maxSecondaryOutputAmount = newValue}
  }
  /// Returns true if `maxSecondaryOutputAmount` has been explicitly set.
  var hasMaxSecondaryOutputAmount: Bool {return _storage._maxSecondaryOutputAmount != nil}
  /// Clears the value of `maxSecondaryOutputAmount`. Subsequent reads from it will return its default value.
  mutating func clearMaxSecondaryOutputAmount() {_uniqueStorage()._maxSecondaryOutputAmount = nil}

  var masterKeyRetentionPeriod: Int64 {
    get {return _storage._masterKeyRetentionPeriod}
    set {_uniqueStorage()._masterKeyRetentionPeriod = newValue}
  }

  var masterAddressInternalKeyLockDuration: Int64 {
    get {return _storage._masterAddressInternalKeyLockDuration}
    set {_uniqueStorage()._masterAddressInternalKeyLockDuration = newValue}
  }

  var masterAddressExternalKeyLockDuration: Int64 {
    get {return _storage._masterAddressExternalKeyLockDuration}
    set {_uniqueStorage()._masterAddressExternalKeyLockDuration = newValue}
  }

  var votingThreshold: Axelar_Utils_V1beta1_Threshold {
    get {return _storage._votingThreshold ?? Axelar_Utils_V1beta1_Threshold()}
    set {_uniqueStorage()._votingThreshold = newValue}
  }
  /// Returns true if `votingThreshold` has been explicitly set.
  var hasVotingThreshold: Bool {return _storage._votingThreshold != nil}
  /// Clears the value of `votingThreshold`. Subsequent reads from it will return its default value.
  mutating func clearVotingThreshold() {_uniqueStorage()._votingThreshold = nil}

  var minVoterCount: Int64 {
    get {return _storage._minVoterCount}
    set {_uniqueStorage()._minVoterCount = newValue}
  }

  var maxTxSize: Int64 {
    get {return _storage._maxTxSize}
    set {_uniqueStorage()._maxTxSize = newValue}
  }

  var transactionFeeRate: String {
    get {return _storage._transactionFeeRate}
    set {_uniqueStorage()._transactionFeeRate = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "axelar.bitcoin.v1beta1"

extension Axelar_Bitcoin_V1beta1_Params: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Params"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "network"),
    2: .standard(proto: "confirmation_height"),
    3: .standard(proto: "revote_locking_period"),
    4: .standard(proto: "sig_check_interval"),
    5: .standard(proto: "min_output_amount"),
    6: .standard(proto: "max_input_count"),
    7: .standard(proto: "max_secondary_output_amount"),
    8: .standard(proto: "master_key_retention_period"),
    9: .standard(proto: "master_address_internal_key_lock_duration"),
    10: .standard(proto: "master_address_external_key_lock_duration"),
    11: .standard(proto: "voting_threshold"),
    12: .standard(proto: "min_voter_count"),
    13: .standard(proto: "max_tx_size"),
    14: .standard(proto: "transaction_fee_rate"),
  ]

  fileprivate class _StorageClass {
    var _network: Axelar_Bitcoin_V1beta1_Network? = nil
    var _confirmationHeight: UInt64 = 0
    var _revoteLockingPeriod: Int64 = 0
    var _sigCheckInterval: Int64 = 0
    var _minOutputAmount: Cosmos_Base_V1beta1_DecCoin? = nil
    var _maxInputCount: Int64 = 0
    var _maxSecondaryOutputAmount: Cosmos_Base_V1beta1_DecCoin? = nil
    var _masterKeyRetentionPeriod: Int64 = 0
    var _masterAddressInternalKeyLockDuration: Int64 = 0
    var _masterAddressExternalKeyLockDuration: Int64 = 0
    var _votingThreshold: Axelar_Utils_V1beta1_Threshold? = nil
    var _minVoterCount: Int64 = 0
    var _maxTxSize: Int64 = 0
    var _transactionFeeRate: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _network = source._network
      _confirmationHeight = source._confirmationHeight
      _revoteLockingPeriod = source._revoteLockingPeriod
      _sigCheckInterval = source._sigCheckInterval
      _minOutputAmount = source._minOutputAmount
      _maxInputCount = source._maxInputCount
      _maxSecondaryOutputAmount = source._maxSecondaryOutputAmount
      _masterKeyRetentionPeriod = source._masterKeyRetentionPeriod
      _masterAddressInternalKeyLockDuration = source._masterAddressInternalKeyLockDuration
      _masterAddressExternalKeyLockDuration = source._masterAddressExternalKeyLockDuration
      _votingThreshold = source._votingThreshold
      _minVoterCount = source._minVoterCount
      _maxTxSize = source._maxTxSize
      _transactionFeeRate = source._transactionFeeRate
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._network) }()
        case 2: try { try decoder.decodeSingularUInt64Field(value: &_storage._confirmationHeight) }()
        case 3: try { try decoder.decodeSingularInt64Field(value: &_storage._revoteLockingPeriod) }()
        case 4: try { try decoder.decodeSingularInt64Field(value: &_storage._sigCheckInterval) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._minOutputAmount) }()
        case 6: try { try decoder.decodeSingularInt64Field(value: &_storage._maxInputCount) }()
        case 7: try { try decoder.decodeSingularMessageField(value: &_storage._maxSecondaryOutputAmount) }()
        case 8: try { try decoder.decodeSingularInt64Field(value: &_storage._masterKeyRetentionPeriod) }()
        case 9: try { try decoder.decodeSingularInt64Field(value: &_storage._masterAddressInternalKeyLockDuration) }()
        case 10: try { try decoder.decodeSingularInt64Field(value: &_storage._masterAddressExternalKeyLockDuration) }()
        case 11: try { try decoder.decodeSingularMessageField(value: &_storage._votingThreshold) }()
        case 12: try { try decoder.decodeSingularInt64Field(value: &_storage._minVoterCount) }()
        case 13: try { try decoder.decodeSingularInt64Field(value: &_storage._maxTxSize) }()
        case 14: try { try decoder.decodeSingularStringField(value: &_storage._transactionFeeRate) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._network {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._confirmationHeight != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._confirmationHeight, fieldNumber: 2)
      }
      if _storage._revoteLockingPeriod != 0 {
        try visitor.visitSingularInt64Field(value: _storage._revoteLockingPeriod, fieldNumber: 3)
      }
      if _storage._sigCheckInterval != 0 {
        try visitor.visitSingularInt64Field(value: _storage._sigCheckInterval, fieldNumber: 4)
      }
      if let v = _storage._minOutputAmount {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if _storage._maxInputCount != 0 {
        try visitor.visitSingularInt64Field(value: _storage._maxInputCount, fieldNumber: 6)
      }
      if let v = _storage._maxSecondaryOutputAmount {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
      if _storage._masterKeyRetentionPeriod != 0 {
        try visitor.visitSingularInt64Field(value: _storage._masterKeyRetentionPeriod, fieldNumber: 8)
      }
      if _storage._masterAddressInternalKeyLockDuration != 0 {
        try visitor.visitSingularInt64Field(value: _storage._masterAddressInternalKeyLockDuration, fieldNumber: 9)
      }
      if _storage._masterAddressExternalKeyLockDuration != 0 {
        try visitor.visitSingularInt64Field(value: _storage._masterAddressExternalKeyLockDuration, fieldNumber: 10)
      }
      if let v = _storage._votingThreshold {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
      }
      if _storage._minVoterCount != 0 {
        try visitor.visitSingularInt64Field(value: _storage._minVoterCount, fieldNumber: 12)
      }
      if _storage._maxTxSize != 0 {
        try visitor.visitSingularInt64Field(value: _storage._maxTxSize, fieldNumber: 13)
      }
      if !_storage._transactionFeeRate.isEmpty {
        try visitor.visitSingularStringField(value: _storage._transactionFeeRate, fieldNumber: 14)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Axelar_Bitcoin_V1beta1_Params, rhs: Axelar_Bitcoin_V1beta1_Params) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._network != rhs_storage._network {return false}
        if _storage._confirmationHeight != rhs_storage._confirmationHeight {return false}
        if _storage._revoteLockingPeriod != rhs_storage._revoteLockingPeriod {return false}
        if _storage._sigCheckInterval != rhs_storage._sigCheckInterval {return false}
        if _storage._minOutputAmount != rhs_storage._minOutputAmount {return false}
        if _storage._maxInputCount != rhs_storage._maxInputCount {return false}
        if _storage._maxSecondaryOutputAmount != rhs_storage._maxSecondaryOutputAmount {return false}
        if _storage._masterKeyRetentionPeriod != rhs_storage._masterKeyRetentionPeriod {return false}
        if _storage._masterAddressInternalKeyLockDuration != rhs_storage._masterAddressInternalKeyLockDuration {return false}
        if _storage._masterAddressExternalKeyLockDuration != rhs_storage._masterAddressExternalKeyLockDuration {return false}
        if _storage._votingThreshold != rhs_storage._votingThreshold {return false}
        if _storage._minVoterCount != rhs_storage._minVoterCount {return false}
        if _storage._maxTxSize != rhs_storage._maxTxSize {return false}
        if _storage._transactionFeeRate != rhs_storage._transactionFeeRate {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
