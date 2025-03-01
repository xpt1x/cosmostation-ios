// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: kava/incentive/v1beta1/genesis.proto
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

/// AccumulationTime stores the previous reward distribution time and its corresponding collateral type
struct Kava_Incentive_V1beta1_AccumulationTime {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var collateralType: String = String()

  var previousAccumulationTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _previousAccumulationTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_previousAccumulationTime = newValue}
  }
  /// Returns true if `previousAccumulationTime` has been explicitly set.
  var hasPreviousAccumulationTime: Bool {return self._previousAccumulationTime != nil}
  /// Clears the value of `previousAccumulationTime`. Subsequent reads from it will return its default value.
  mutating func clearPreviousAccumulationTime() {self._previousAccumulationTime = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _previousAccumulationTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// GenesisRewardState groups together the global state for a particular reward so it can be exported in genesis.
struct Kava_Incentive_V1beta1_GenesisRewardState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var accumulationTimes: [Kava_Incentive_V1beta1_AccumulationTime] = []

  var multiRewardIndexes: [Kava_Incentive_V1beta1_MultiRewardIndex] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// GenesisState is the state that must be provided at genesis.
struct Kava_Incentive_V1beta1_GenesisState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var params: Kava_Incentive_V1beta1_Params {
    get {return _storage._params ?? Kava_Incentive_V1beta1_Params()}
    set {_uniqueStorage()._params = newValue}
  }
  /// Returns true if `params` has been explicitly set.
  var hasParams: Bool {return _storage._params != nil}
  /// Clears the value of `params`. Subsequent reads from it will return its default value.
  mutating func clearParams() {_uniqueStorage()._params = nil}

  var usdxRewardState: Kava_Incentive_V1beta1_GenesisRewardState {
    get {return _storage._usdxRewardState ?? Kava_Incentive_V1beta1_GenesisRewardState()}
    set {_uniqueStorage()._usdxRewardState = newValue}
  }
  /// Returns true if `usdxRewardState` has been explicitly set.
  var hasUsdxRewardState: Bool {return _storage._usdxRewardState != nil}
  /// Clears the value of `usdxRewardState`. Subsequent reads from it will return its default value.
  mutating func clearUsdxRewardState() {_uniqueStorage()._usdxRewardState = nil}

  var hardSupplyRewardState: Kava_Incentive_V1beta1_GenesisRewardState {
    get {return _storage._hardSupplyRewardState ?? Kava_Incentive_V1beta1_GenesisRewardState()}
    set {_uniqueStorage()._hardSupplyRewardState = newValue}
  }
  /// Returns true if `hardSupplyRewardState` has been explicitly set.
  var hasHardSupplyRewardState: Bool {return _storage._hardSupplyRewardState != nil}
  /// Clears the value of `hardSupplyRewardState`. Subsequent reads from it will return its default value.
  mutating func clearHardSupplyRewardState() {_uniqueStorage()._hardSupplyRewardState = nil}

  var hardBorrowRewardState: Kava_Incentive_V1beta1_GenesisRewardState {
    get {return _storage._hardBorrowRewardState ?? Kava_Incentive_V1beta1_GenesisRewardState()}
    set {_uniqueStorage()._hardBorrowRewardState = newValue}
  }
  /// Returns true if `hardBorrowRewardState` has been explicitly set.
  var hasHardBorrowRewardState: Bool {return _storage._hardBorrowRewardState != nil}
  /// Clears the value of `hardBorrowRewardState`. Subsequent reads from it will return its default value.
  mutating func clearHardBorrowRewardState() {_uniqueStorage()._hardBorrowRewardState = nil}

  var delegatorRewardState: Kava_Incentive_V1beta1_GenesisRewardState {
    get {return _storage._delegatorRewardState ?? Kava_Incentive_V1beta1_GenesisRewardState()}
    set {_uniqueStorage()._delegatorRewardState = newValue}
  }
  /// Returns true if `delegatorRewardState` has been explicitly set.
  var hasDelegatorRewardState: Bool {return _storage._delegatorRewardState != nil}
  /// Clears the value of `delegatorRewardState`. Subsequent reads from it will return its default value.
  mutating func clearDelegatorRewardState() {_uniqueStorage()._delegatorRewardState = nil}

  var swapRewardState: Kava_Incentive_V1beta1_GenesisRewardState {
    get {return _storage._swapRewardState ?? Kava_Incentive_V1beta1_GenesisRewardState()}
    set {_uniqueStorage()._swapRewardState = newValue}
  }
  /// Returns true if `swapRewardState` has been explicitly set.
  var hasSwapRewardState: Bool {return _storage._swapRewardState != nil}
  /// Clears the value of `swapRewardState`. Subsequent reads from it will return its default value.
  mutating func clearSwapRewardState() {_uniqueStorage()._swapRewardState = nil}

  var usdxMintingClaims: [Kava_Incentive_V1beta1_USDXMintingClaim] {
    get {return _storage._usdxMintingClaims}
    set {_uniqueStorage()._usdxMintingClaims = newValue}
  }

  var hardLiquidityProviderClaims: [Kava_Incentive_V1beta1_HardLiquidityProviderClaim] {
    get {return _storage._hardLiquidityProviderClaims}
    set {_uniqueStorage()._hardLiquidityProviderClaims = newValue}
  }

  var delegatorClaims: [Kava_Incentive_V1beta1_DelegatorClaim] {
    get {return _storage._delegatorClaims}
    set {_uniqueStorage()._delegatorClaims = newValue}
  }

  var swapClaims: [Kava_Incentive_V1beta1_SwapClaim] {
    get {return _storage._swapClaims}
    set {_uniqueStorage()._swapClaims = newValue}
  }

  var savingsRewardState: Kava_Incentive_V1beta1_GenesisRewardState {
    get {return _storage._savingsRewardState ?? Kava_Incentive_V1beta1_GenesisRewardState()}
    set {_uniqueStorage()._savingsRewardState = newValue}
  }
  /// Returns true if `savingsRewardState` has been explicitly set.
  var hasSavingsRewardState: Bool {return _storage._savingsRewardState != nil}
  /// Clears the value of `savingsRewardState`. Subsequent reads from it will return its default value.
  mutating func clearSavingsRewardState() {_uniqueStorage()._savingsRewardState = nil}

  var savingsClaims: [Kava_Incentive_V1beta1_SavingsClaim] {
    get {return _storage._savingsClaims}
    set {_uniqueStorage()._savingsClaims = newValue}
  }

  var earnRewardState: Kava_Incentive_V1beta1_GenesisRewardState {
    get {return _storage._earnRewardState ?? Kava_Incentive_V1beta1_GenesisRewardState()}
    set {_uniqueStorage()._earnRewardState = newValue}
  }
  /// Returns true if `earnRewardState` has been explicitly set.
  var hasEarnRewardState: Bool {return _storage._earnRewardState != nil}
  /// Clears the value of `earnRewardState`. Subsequent reads from it will return its default value.
  mutating func clearEarnRewardState() {_uniqueStorage()._earnRewardState = nil}

  var earnClaims: [Kava_Incentive_V1beta1_EarnClaim] {
    get {return _storage._earnClaims}
    set {_uniqueStorage()._earnClaims = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "kava.incentive.v1beta1"

extension Kava_Incentive_V1beta1_AccumulationTime: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AccumulationTime"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "collateral_type"),
    2: .standard(proto: "previous_accumulation_time"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.collateralType) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._previousAccumulationTime) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.collateralType.isEmpty {
      try visitor.visitSingularStringField(value: self.collateralType, fieldNumber: 1)
    }
    if let v = self._previousAccumulationTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Incentive_V1beta1_AccumulationTime, rhs: Kava_Incentive_V1beta1_AccumulationTime) -> Bool {
    if lhs.collateralType != rhs.collateralType {return false}
    if lhs._previousAccumulationTime != rhs._previousAccumulationTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Kava_Incentive_V1beta1_GenesisRewardState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GenesisRewardState"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "accumulation_times"),
    2: .standard(proto: "multi_reward_indexes"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.accumulationTimes) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.multiRewardIndexes) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.accumulationTimes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.accumulationTimes, fieldNumber: 1)
    }
    if !self.multiRewardIndexes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.multiRewardIndexes, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Incentive_V1beta1_GenesisRewardState, rhs: Kava_Incentive_V1beta1_GenesisRewardState) -> Bool {
    if lhs.accumulationTimes != rhs.accumulationTimes {return false}
    if lhs.multiRewardIndexes != rhs.multiRewardIndexes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Kava_Incentive_V1beta1_GenesisState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GenesisState"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "params"),
    2: .standard(proto: "usdx_reward_state"),
    3: .standard(proto: "hard_supply_reward_state"),
    4: .standard(proto: "hard_borrow_reward_state"),
    5: .standard(proto: "delegator_reward_state"),
    6: .standard(proto: "swap_reward_state"),
    7: .standard(proto: "usdx_minting_claims"),
    8: .standard(proto: "hard_liquidity_provider_claims"),
    9: .standard(proto: "delegator_claims"),
    10: .standard(proto: "swap_claims"),
    11: .standard(proto: "savings_reward_state"),
    12: .standard(proto: "savings_claims"),
    13: .standard(proto: "earn_reward_state"),
    14: .standard(proto: "earn_claims"),
  ]

  fileprivate class _StorageClass {
    var _params: Kava_Incentive_V1beta1_Params? = nil
    var _usdxRewardState: Kava_Incentive_V1beta1_GenesisRewardState? = nil
    var _hardSupplyRewardState: Kava_Incentive_V1beta1_GenesisRewardState? = nil
    var _hardBorrowRewardState: Kava_Incentive_V1beta1_GenesisRewardState? = nil
    var _delegatorRewardState: Kava_Incentive_V1beta1_GenesisRewardState? = nil
    var _swapRewardState: Kava_Incentive_V1beta1_GenesisRewardState? = nil
    var _usdxMintingClaims: [Kava_Incentive_V1beta1_USDXMintingClaim] = []
    var _hardLiquidityProviderClaims: [Kava_Incentive_V1beta1_HardLiquidityProviderClaim] = []
    var _delegatorClaims: [Kava_Incentive_V1beta1_DelegatorClaim] = []
    var _swapClaims: [Kava_Incentive_V1beta1_SwapClaim] = []
    var _savingsRewardState: Kava_Incentive_V1beta1_GenesisRewardState? = nil
    var _savingsClaims: [Kava_Incentive_V1beta1_SavingsClaim] = []
    var _earnRewardState: Kava_Incentive_V1beta1_GenesisRewardState? = nil
    var _earnClaims: [Kava_Incentive_V1beta1_EarnClaim] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _params = source._params
      _usdxRewardState = source._usdxRewardState
      _hardSupplyRewardState = source._hardSupplyRewardState
      _hardBorrowRewardState = source._hardBorrowRewardState
      _delegatorRewardState = source._delegatorRewardState
      _swapRewardState = source._swapRewardState
      _usdxMintingClaims = source._usdxMintingClaims
      _hardLiquidityProviderClaims = source._hardLiquidityProviderClaims
      _delegatorClaims = source._delegatorClaims
      _swapClaims = source._swapClaims
      _savingsRewardState = source._savingsRewardState
      _savingsClaims = source._savingsClaims
      _earnRewardState = source._earnRewardState
      _earnClaims = source._earnClaims
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
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._params) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._usdxRewardState) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._hardSupplyRewardState) }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._hardBorrowRewardState) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._delegatorRewardState) }()
        case 6: try { try decoder.decodeSingularMessageField(value: &_storage._swapRewardState) }()
        case 7: try { try decoder.decodeRepeatedMessageField(value: &_storage._usdxMintingClaims) }()
        case 8: try { try decoder.decodeRepeatedMessageField(value: &_storage._hardLiquidityProviderClaims) }()
        case 9: try { try decoder.decodeRepeatedMessageField(value: &_storage._delegatorClaims) }()
        case 10: try { try decoder.decodeRepeatedMessageField(value: &_storage._swapClaims) }()
        case 11: try { try decoder.decodeSingularMessageField(value: &_storage._savingsRewardState) }()
        case 12: try { try decoder.decodeRepeatedMessageField(value: &_storage._savingsClaims) }()
        case 13: try { try decoder.decodeSingularMessageField(value: &_storage._earnRewardState) }()
        case 14: try { try decoder.decodeRepeatedMessageField(value: &_storage._earnClaims) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._params {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._usdxRewardState {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._hardSupplyRewardState {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._hardBorrowRewardState {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._delegatorRewardState {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if let v = _storage._swapRewardState {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if !_storage._usdxMintingClaims.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._usdxMintingClaims, fieldNumber: 7)
      }
      if !_storage._hardLiquidityProviderClaims.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._hardLiquidityProviderClaims, fieldNumber: 8)
      }
      if !_storage._delegatorClaims.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._delegatorClaims, fieldNumber: 9)
      }
      if !_storage._swapClaims.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._swapClaims, fieldNumber: 10)
      }
      if let v = _storage._savingsRewardState {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
      }
      if !_storage._savingsClaims.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._savingsClaims, fieldNumber: 12)
      }
      if let v = _storage._earnRewardState {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 13)
      }
      if !_storage._earnClaims.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._earnClaims, fieldNumber: 14)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Incentive_V1beta1_GenesisState, rhs: Kava_Incentive_V1beta1_GenesisState) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._params != rhs_storage._params {return false}
        if _storage._usdxRewardState != rhs_storage._usdxRewardState {return false}
        if _storage._hardSupplyRewardState != rhs_storage._hardSupplyRewardState {return false}
        if _storage._hardBorrowRewardState != rhs_storage._hardBorrowRewardState {return false}
        if _storage._delegatorRewardState != rhs_storage._delegatorRewardState {return false}
        if _storage._swapRewardState != rhs_storage._swapRewardState {return false}
        if _storage._usdxMintingClaims != rhs_storage._usdxMintingClaims {return false}
        if _storage._hardLiquidityProviderClaims != rhs_storage._hardLiquidityProviderClaims {return false}
        if _storage._delegatorClaims != rhs_storage._delegatorClaims {return false}
        if _storage._swapClaims != rhs_storage._swapClaims {return false}
        if _storage._savingsRewardState != rhs_storage._savingsRewardState {return false}
        if _storage._savingsClaims != rhs_storage._savingsClaims {return false}
        if _storage._earnRewardState != rhs_storage._earnRewardState {return false}
        if _storage._earnClaims != rhs_storage._earnClaims {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
