//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: pstake/lscosmos/v1beta1/query.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


/// Query defines the gRPC querier service.
///
/// Usage: instantiate `Pstake_Lscosmos_V1beta1_QueryClient`, then call methods of this protocol to make API calls.
internal protocol Pstake_Lscosmos_V1beta1_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Pstake_Lscosmos_V1beta1_QueryClientInterceptorFactoryProtocol? { get }

  func params(
    _ request: Pstake_Lscosmos_V1beta1_QueryParamsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryParamsRequest, Pstake_Lscosmos_V1beta1_QueryParamsResponse>

  func hostChainParams(
    _ request: Pstake_Lscosmos_V1beta1_QueryHostChainParamsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryHostChainParamsRequest, Pstake_Lscosmos_V1beta1_QueryHostChainParamsResponse>

  func delegationState(
    _ request: Pstake_Lscosmos_V1beta1_QueryDelegationStateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryDelegationStateRequest, Pstake_Lscosmos_V1beta1_QueryDelegationStateResponse>

  func allowListedValidators(
    _ request: Pstake_Lscosmos_V1beta1_QueryAllowListedValidatorsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryAllowListedValidatorsRequest, Pstake_Lscosmos_V1beta1_QueryAllowListedValidatorsResponse>

  func cValue(
    _ request: Pstake_Lscosmos_V1beta1_QueryCValueRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryCValueRequest, Pstake_Lscosmos_V1beta1_QueryCValueResponse>

  func moduleState(
    _ request: Pstake_Lscosmos_V1beta1_QueryModuleStateRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryModuleStateRequest, Pstake_Lscosmos_V1beta1_QueryModuleStateResponse>

  func iBCTransientStore(
    _ request: Pstake_Lscosmos_V1beta1_QueryIBCTransientStoreRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryIBCTransientStoreRequest, Pstake_Lscosmos_V1beta1_QueryIBCTransientStoreResponse>

  func unclaimed(
    _ request: Pstake_Lscosmos_V1beta1_QueryUnclaimedRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryUnclaimedRequest, Pstake_Lscosmos_V1beta1_QueryUnclaimedResponse>

  func failedUnbondings(
    _ request: Pstake_Lscosmos_V1beta1_QueryFailedUnbondingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryFailedUnbondingsRequest, Pstake_Lscosmos_V1beta1_QueryFailedUnbondingsResponse>

  func pendingUnbondings(
    _ request: Pstake_Lscosmos_V1beta1_QueryPendingUnbondingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryPendingUnbondingsRequest, Pstake_Lscosmos_V1beta1_QueryPendingUnbondingsResponse>

  func unbondingEpochCValue(
    _ request: Pstake_Lscosmos_V1beta1_QueryUnbondingEpochCValueRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryUnbondingEpochCValueRequest, Pstake_Lscosmos_V1beta1_QueryUnbondingEpochCValueResponse>

  func hostAccountUndelegation(
    _ request: Pstake_Lscosmos_V1beta1_QueryHostAccountUndelegationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryHostAccountUndelegationRequest, Pstake_Lscosmos_V1beta1_QueryHostAccountUndelegationResponse>

  func delegatorUnbondingEpochEntry(
    _ request: Pstake_Lscosmos_V1beta1_QueryDelegatorUnbondingEpochEntryRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryDelegatorUnbondingEpochEntryRequest, Pstake_Lscosmos_V1beta1_QueryDelegatorUnbondingEpochEntryResponse>

  func hostAccounts(
    _ request: Pstake_Lscosmos_V1beta1_QueryHostAccountsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryHostAccountsRequest, Pstake_Lscosmos_V1beta1_QueryHostAccountsResponse>

  func depositModuleAccount(
    _ request: Pstake_Lscosmos_V1beta1_QueryDepositModuleAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryDepositModuleAccountRequest, Pstake_Lscosmos_V1beta1_QueryDepositModuleAccountResponse>

  func delegatorUnbondingEpochEntries(
    _ request: Pstake_Lscosmos_V1beta1_QueryAllDelegatorUnbondingEpochEntriesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryAllDelegatorUnbondingEpochEntriesRequest, Pstake_Lscosmos_V1beta1_QueryAllDelegatorUnbondingEpochEntriesResponse>
}

extension Pstake_Lscosmos_V1beta1_QueryClientProtocol {
  internal var serviceName: String {
    return "pstake.lscosmos.v1beta1.Query"
  }

  /// Parameters queries the parameters of the module.
  ///
  /// - Parameters:
  ///   - request: Request to send to Params.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func params(
    _ request: Pstake_Lscosmos_V1beta1_QueryParamsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryParamsRequest, Pstake_Lscosmos_V1beta1_QueryParamsResponse> {
    return self.makeUnaryCall(
      path: "/pstake.lscosmos.v1beta1.Query/Params",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeParamsInterceptors() ?? []
    )
  }

  /// Unary call to HostChainParams
  ///
  /// - Parameters:
  ///   - request: Request to send to HostChainParams.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func hostChainParams(
    _ request: Pstake_Lscosmos_V1beta1_QueryHostChainParamsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryHostChainParamsRequest, Pstake_Lscosmos_V1beta1_QueryHostChainParamsResponse> {
    return self.makeUnaryCall(
      path: "/pstake.lscosmos.v1beta1.Query/HostChainParams",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeHostChainParamsInterceptors() ?? []
    )
  }

  /// Unary call to DelegationState
  ///
  /// - Parameters:
  ///   - request: Request to send to DelegationState.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func delegationState(
    _ request: Pstake_Lscosmos_V1beta1_QueryDelegationStateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryDelegationStateRequest, Pstake_Lscosmos_V1beta1_QueryDelegationStateResponse> {
    return self.makeUnaryCall(
      path: "/pstake.lscosmos.v1beta1.Query/DelegationState",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDelegationStateInterceptors() ?? []
    )
  }

  /// Unary call to AllowListedValidators
  ///
  /// - Parameters:
  ///   - request: Request to send to AllowListedValidators.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func allowListedValidators(
    _ request: Pstake_Lscosmos_V1beta1_QueryAllowListedValidatorsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryAllowListedValidatorsRequest, Pstake_Lscosmos_V1beta1_QueryAllowListedValidatorsResponse> {
    return self.makeUnaryCall(
      path: "/pstake.lscosmos.v1beta1.Query/AllowListedValidators",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAllowListedValidatorsInterceptors() ?? []
    )
  }

  /// Unary call to CValue
  ///
  /// - Parameters:
  ///   - request: Request to send to CValue.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func cValue(
    _ request: Pstake_Lscosmos_V1beta1_QueryCValueRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryCValueRequest, Pstake_Lscosmos_V1beta1_QueryCValueResponse> {
    return self.makeUnaryCall(
      path: "/pstake.lscosmos.v1beta1.Query/CValue",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCValueInterceptors() ?? []
    )
  }

  /// Unary call to ModuleState
  ///
  /// - Parameters:
  ///   - request: Request to send to ModuleState.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func moduleState(
    _ request: Pstake_Lscosmos_V1beta1_QueryModuleStateRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryModuleStateRequest, Pstake_Lscosmos_V1beta1_QueryModuleStateResponse> {
    return self.makeUnaryCall(
      path: "/pstake.lscosmos.v1beta1.Query/ModuleState",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeModuleStateInterceptors() ?? []
    )
  }

  /// Unary call to IBCTransientStore
  ///
  /// - Parameters:
  ///   - request: Request to send to IBCTransientStore.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func iBCTransientStore(
    _ request: Pstake_Lscosmos_V1beta1_QueryIBCTransientStoreRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryIBCTransientStoreRequest, Pstake_Lscosmos_V1beta1_QueryIBCTransientStoreResponse> {
    return self.makeUnaryCall(
      path: "/pstake.lscosmos.v1beta1.Query/IBCTransientStore",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeIBCTransientStoreInterceptors() ?? []
    )
  }

  /// Unary call to Unclaimed
  ///
  /// - Parameters:
  ///   - request: Request to send to Unclaimed.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func unclaimed(
    _ request: Pstake_Lscosmos_V1beta1_QueryUnclaimedRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryUnclaimedRequest, Pstake_Lscosmos_V1beta1_QueryUnclaimedResponse> {
    return self.makeUnaryCall(
      path: "/pstake.lscosmos.v1beta1.Query/Unclaimed",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUnclaimedInterceptors() ?? []
    )
  }

  /// Unary call to FailedUnbondings
  ///
  /// - Parameters:
  ///   - request: Request to send to FailedUnbondings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func failedUnbondings(
    _ request: Pstake_Lscosmos_V1beta1_QueryFailedUnbondingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryFailedUnbondingsRequest, Pstake_Lscosmos_V1beta1_QueryFailedUnbondingsResponse> {
    return self.makeUnaryCall(
      path: "/pstake.lscosmos.v1beta1.Query/FailedUnbondings",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeFailedUnbondingsInterceptors() ?? []
    )
  }

  /// Unary call to PendingUnbondings
  ///
  /// - Parameters:
  ///   - request: Request to send to PendingUnbondings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func pendingUnbondings(
    _ request: Pstake_Lscosmos_V1beta1_QueryPendingUnbondingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryPendingUnbondingsRequest, Pstake_Lscosmos_V1beta1_QueryPendingUnbondingsResponse> {
    return self.makeUnaryCall(
      path: "/pstake.lscosmos.v1beta1.Query/PendingUnbondings",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePendingUnbondingsInterceptors() ?? []
    )
  }

  /// Unary call to UnbondingEpochCValue
  ///
  /// - Parameters:
  ///   - request: Request to send to UnbondingEpochCValue.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func unbondingEpochCValue(
    _ request: Pstake_Lscosmos_V1beta1_QueryUnbondingEpochCValueRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryUnbondingEpochCValueRequest, Pstake_Lscosmos_V1beta1_QueryUnbondingEpochCValueResponse> {
    return self.makeUnaryCall(
      path: "/pstake.lscosmos.v1beta1.Query/UnbondingEpochCValue",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUnbondingEpochCValueInterceptors() ?? []
    )
  }

  /// Unary call to HostAccountUndelegation
  ///
  /// - Parameters:
  ///   - request: Request to send to HostAccountUndelegation.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func hostAccountUndelegation(
    _ request: Pstake_Lscosmos_V1beta1_QueryHostAccountUndelegationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryHostAccountUndelegationRequest, Pstake_Lscosmos_V1beta1_QueryHostAccountUndelegationResponse> {
    return self.makeUnaryCall(
      path: "/pstake.lscosmos.v1beta1.Query/HostAccountUndelegation",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeHostAccountUndelegationInterceptors() ?? []
    )
  }

  /// Unary call to DelegatorUnbondingEpochEntry
  ///
  /// - Parameters:
  ///   - request: Request to send to DelegatorUnbondingEpochEntry.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func delegatorUnbondingEpochEntry(
    _ request: Pstake_Lscosmos_V1beta1_QueryDelegatorUnbondingEpochEntryRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryDelegatorUnbondingEpochEntryRequest, Pstake_Lscosmos_V1beta1_QueryDelegatorUnbondingEpochEntryResponse> {
    return self.makeUnaryCall(
      path: "/pstake.lscosmos.v1beta1.Query/DelegatorUnbondingEpochEntry",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDelegatorUnbondingEpochEntryInterceptors() ?? []
    )
  }

  /// Unary call to HostAccounts
  ///
  /// - Parameters:
  ///   - request: Request to send to HostAccounts.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func hostAccounts(
    _ request: Pstake_Lscosmos_V1beta1_QueryHostAccountsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryHostAccountsRequest, Pstake_Lscosmos_V1beta1_QueryHostAccountsResponse> {
    return self.makeUnaryCall(
      path: "/pstake.lscosmos.v1beta1.Query/HostAccounts",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeHostAccountsInterceptors() ?? []
    )
  }

  /// Unary call to DepositModuleAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to DepositModuleAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func depositModuleAccount(
    _ request: Pstake_Lscosmos_V1beta1_QueryDepositModuleAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryDepositModuleAccountRequest, Pstake_Lscosmos_V1beta1_QueryDepositModuleAccountResponse> {
    return self.makeUnaryCall(
      path: "/pstake.lscosmos.v1beta1.Query/DepositModuleAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDepositModuleAccountInterceptors() ?? []
    )
  }

  /// Unary call to DelegatorUnbondingEpochEntries
  ///
  /// - Parameters:
  ///   - request: Request to send to DelegatorUnbondingEpochEntries.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func delegatorUnbondingEpochEntries(
    _ request: Pstake_Lscosmos_V1beta1_QueryAllDelegatorUnbondingEpochEntriesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Pstake_Lscosmos_V1beta1_QueryAllDelegatorUnbondingEpochEntriesRequest, Pstake_Lscosmos_V1beta1_QueryAllDelegatorUnbondingEpochEntriesResponse> {
    return self.makeUnaryCall(
      path: "/pstake.lscosmos.v1beta1.Query/DelegatorUnbondingEpochEntries",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDelegatorUnbondingEpochEntriesInterceptors() ?? []
    )
  }
}

internal protocol Pstake_Lscosmos_V1beta1_QueryClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'params'.
  func makeParamsInterceptors() -> [ClientInterceptor<Pstake_Lscosmos_V1beta1_QueryParamsRequest, Pstake_Lscosmos_V1beta1_QueryParamsResponse>]

  /// - Returns: Interceptors to use when invoking 'hostChainParams'.
  func makeHostChainParamsInterceptors() -> [ClientInterceptor<Pstake_Lscosmos_V1beta1_QueryHostChainParamsRequest, Pstake_Lscosmos_V1beta1_QueryHostChainParamsResponse>]

  /// - Returns: Interceptors to use when invoking 'delegationState'.
  func makeDelegationStateInterceptors() -> [ClientInterceptor<Pstake_Lscosmos_V1beta1_QueryDelegationStateRequest, Pstake_Lscosmos_V1beta1_QueryDelegationStateResponse>]

  /// - Returns: Interceptors to use when invoking 'allowListedValidators'.
  func makeAllowListedValidatorsInterceptors() -> [ClientInterceptor<Pstake_Lscosmos_V1beta1_QueryAllowListedValidatorsRequest, Pstake_Lscosmos_V1beta1_QueryAllowListedValidatorsResponse>]

  /// - Returns: Interceptors to use when invoking 'cValue'.
  func makeCValueInterceptors() -> [ClientInterceptor<Pstake_Lscosmos_V1beta1_QueryCValueRequest, Pstake_Lscosmos_V1beta1_QueryCValueResponse>]

  /// - Returns: Interceptors to use when invoking 'moduleState'.
  func makeModuleStateInterceptors() -> [ClientInterceptor<Pstake_Lscosmos_V1beta1_QueryModuleStateRequest, Pstake_Lscosmos_V1beta1_QueryModuleStateResponse>]

  /// - Returns: Interceptors to use when invoking 'iBCTransientStore'.
  func makeIBCTransientStoreInterceptors() -> [ClientInterceptor<Pstake_Lscosmos_V1beta1_QueryIBCTransientStoreRequest, Pstake_Lscosmos_V1beta1_QueryIBCTransientStoreResponse>]

  /// - Returns: Interceptors to use when invoking 'unclaimed'.
  func makeUnclaimedInterceptors() -> [ClientInterceptor<Pstake_Lscosmos_V1beta1_QueryUnclaimedRequest, Pstake_Lscosmos_V1beta1_QueryUnclaimedResponse>]

  /// - Returns: Interceptors to use when invoking 'failedUnbondings'.
  func makeFailedUnbondingsInterceptors() -> [ClientInterceptor<Pstake_Lscosmos_V1beta1_QueryFailedUnbondingsRequest, Pstake_Lscosmos_V1beta1_QueryFailedUnbondingsResponse>]

  /// - Returns: Interceptors to use when invoking 'pendingUnbondings'.
  func makePendingUnbondingsInterceptors() -> [ClientInterceptor<Pstake_Lscosmos_V1beta1_QueryPendingUnbondingsRequest, Pstake_Lscosmos_V1beta1_QueryPendingUnbondingsResponse>]

  /// - Returns: Interceptors to use when invoking 'unbondingEpochCValue'.
  func makeUnbondingEpochCValueInterceptors() -> [ClientInterceptor<Pstake_Lscosmos_V1beta1_QueryUnbondingEpochCValueRequest, Pstake_Lscosmos_V1beta1_QueryUnbondingEpochCValueResponse>]

  /// - Returns: Interceptors to use when invoking 'hostAccountUndelegation'.
  func makeHostAccountUndelegationInterceptors() -> [ClientInterceptor<Pstake_Lscosmos_V1beta1_QueryHostAccountUndelegationRequest, Pstake_Lscosmos_V1beta1_QueryHostAccountUndelegationResponse>]

  /// - Returns: Interceptors to use when invoking 'delegatorUnbondingEpochEntry'.
  func makeDelegatorUnbondingEpochEntryInterceptors() -> [ClientInterceptor<Pstake_Lscosmos_V1beta1_QueryDelegatorUnbondingEpochEntryRequest, Pstake_Lscosmos_V1beta1_QueryDelegatorUnbondingEpochEntryResponse>]

  /// - Returns: Interceptors to use when invoking 'hostAccounts'.
  func makeHostAccountsInterceptors() -> [ClientInterceptor<Pstake_Lscosmos_V1beta1_QueryHostAccountsRequest, Pstake_Lscosmos_V1beta1_QueryHostAccountsResponse>]

  /// - Returns: Interceptors to use when invoking 'depositModuleAccount'.
  func makeDepositModuleAccountInterceptors() -> [ClientInterceptor<Pstake_Lscosmos_V1beta1_QueryDepositModuleAccountRequest, Pstake_Lscosmos_V1beta1_QueryDepositModuleAccountResponse>]

  /// - Returns: Interceptors to use when invoking 'delegatorUnbondingEpochEntries'.
  func makeDelegatorUnbondingEpochEntriesInterceptors() -> [ClientInterceptor<Pstake_Lscosmos_V1beta1_QueryAllDelegatorUnbondingEpochEntriesRequest, Pstake_Lscosmos_V1beta1_QueryAllDelegatorUnbondingEpochEntriesResponse>]
}

internal final class Pstake_Lscosmos_V1beta1_QueryClient: Pstake_Lscosmos_V1beta1_QueryClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Pstake_Lscosmos_V1beta1_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the pstake.lscosmos.v1beta1.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Pstake_Lscosmos_V1beta1_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Query defines the gRPC querier service.
///
/// To build a server, implement a class that conforms to this protocol.
internal protocol Pstake_Lscosmos_V1beta1_QueryProvider: CallHandlerProvider {
  var interceptors: Pstake_Lscosmos_V1beta1_QueryServerInterceptorFactoryProtocol? { get }

  /// Parameters queries the parameters of the module.
  func params(request: Pstake_Lscosmos_V1beta1_QueryParamsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Pstake_Lscosmos_V1beta1_QueryParamsResponse>

  func hostChainParams(request: Pstake_Lscosmos_V1beta1_QueryHostChainParamsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Pstake_Lscosmos_V1beta1_QueryHostChainParamsResponse>

  func delegationState(request: Pstake_Lscosmos_V1beta1_QueryDelegationStateRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Pstake_Lscosmos_V1beta1_QueryDelegationStateResponse>

  func allowListedValidators(request: Pstake_Lscosmos_V1beta1_QueryAllowListedValidatorsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Pstake_Lscosmos_V1beta1_QueryAllowListedValidatorsResponse>

  func cValue(request: Pstake_Lscosmos_V1beta1_QueryCValueRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Pstake_Lscosmos_V1beta1_QueryCValueResponse>

  func moduleState(request: Pstake_Lscosmos_V1beta1_QueryModuleStateRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Pstake_Lscosmos_V1beta1_QueryModuleStateResponse>

  func iBCTransientStore(request: Pstake_Lscosmos_V1beta1_QueryIBCTransientStoreRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Pstake_Lscosmos_V1beta1_QueryIBCTransientStoreResponse>

  func unclaimed(request: Pstake_Lscosmos_V1beta1_QueryUnclaimedRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Pstake_Lscosmos_V1beta1_QueryUnclaimedResponse>

  func failedUnbondings(request: Pstake_Lscosmos_V1beta1_QueryFailedUnbondingsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Pstake_Lscosmos_V1beta1_QueryFailedUnbondingsResponse>

  func pendingUnbondings(request: Pstake_Lscosmos_V1beta1_QueryPendingUnbondingsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Pstake_Lscosmos_V1beta1_QueryPendingUnbondingsResponse>

  func unbondingEpochCValue(request: Pstake_Lscosmos_V1beta1_QueryUnbondingEpochCValueRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Pstake_Lscosmos_V1beta1_QueryUnbondingEpochCValueResponse>

  func hostAccountUndelegation(request: Pstake_Lscosmos_V1beta1_QueryHostAccountUndelegationRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Pstake_Lscosmos_V1beta1_QueryHostAccountUndelegationResponse>

  func delegatorUnbondingEpochEntry(request: Pstake_Lscosmos_V1beta1_QueryDelegatorUnbondingEpochEntryRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Pstake_Lscosmos_V1beta1_QueryDelegatorUnbondingEpochEntryResponse>

  func hostAccounts(request: Pstake_Lscosmos_V1beta1_QueryHostAccountsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Pstake_Lscosmos_V1beta1_QueryHostAccountsResponse>

  func depositModuleAccount(request: Pstake_Lscosmos_V1beta1_QueryDepositModuleAccountRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Pstake_Lscosmos_V1beta1_QueryDepositModuleAccountResponse>

  func delegatorUnbondingEpochEntries(request: Pstake_Lscosmos_V1beta1_QueryAllDelegatorUnbondingEpochEntriesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Pstake_Lscosmos_V1beta1_QueryAllDelegatorUnbondingEpochEntriesResponse>
}

extension Pstake_Lscosmos_V1beta1_QueryProvider {
  internal var serviceName: Substring { return "pstake.lscosmos.v1beta1.Query" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "Params":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Pstake_Lscosmos_V1beta1_QueryParamsRequest>(),
        responseSerializer: ProtobufSerializer<Pstake_Lscosmos_V1beta1_QueryParamsResponse>(),
        interceptors: self.interceptors?.makeParamsInterceptors() ?? [],
        userFunction: self.params(request:context:)
      )

    case "HostChainParams":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Pstake_Lscosmos_V1beta1_QueryHostChainParamsRequest>(),
        responseSerializer: ProtobufSerializer<Pstake_Lscosmos_V1beta1_QueryHostChainParamsResponse>(),
        interceptors: self.interceptors?.makeHostChainParamsInterceptors() ?? [],
        userFunction: self.hostChainParams(request:context:)
      )

    case "DelegationState":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Pstake_Lscosmos_V1beta1_QueryDelegationStateRequest>(),
        responseSerializer: ProtobufSerializer<Pstake_Lscosmos_V1beta1_QueryDelegationStateResponse>(),
        interceptors: self.interceptors?.makeDelegationStateInterceptors() ?? [],
        userFunction: self.delegationState(request:context:)
      )

    case "AllowListedValidators":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Pstake_Lscosmos_V1beta1_QueryAllowListedValidatorsRequest>(),
        responseSerializer: ProtobufSerializer<Pstake_Lscosmos_V1beta1_QueryAllowListedValidatorsResponse>(),
        interceptors: self.interceptors?.makeAllowListedValidatorsInterceptors() ?? [],
        userFunction: self.allowListedValidators(request:context:)
      )

    case "CValue":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Pstake_Lscosmos_V1beta1_QueryCValueRequest>(),
        responseSerializer: ProtobufSerializer<Pstake_Lscosmos_V1beta1_QueryCValueResponse>(),
        interceptors: self.interceptors?.makeCValueInterceptors() ?? [],
        userFunction: self.cValue(request:context:)
      )

    case "ModuleState":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Pstake_Lscosmos_V1beta1_QueryModuleStateRequest>(),
        responseSerializer: ProtobufSerializer<Pstake_Lscosmos_V1beta1_QueryModuleStateResponse>(),
        interceptors: self.interceptors?.makeModuleStateInterceptors() ?? [],
        userFunction: self.moduleState(request:context:)
      )

    case "IBCTransientStore":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Pstake_Lscosmos_V1beta1_QueryIBCTransientStoreRequest>(),
        responseSerializer: ProtobufSerializer<Pstake_Lscosmos_V1beta1_QueryIBCTransientStoreResponse>(),
        interceptors: self.interceptors?.makeIBCTransientStoreInterceptors() ?? [],
        userFunction: self.iBCTransientStore(request:context:)
      )

    case "Unclaimed":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Pstake_Lscosmos_V1beta1_QueryUnclaimedRequest>(),
        responseSerializer: ProtobufSerializer<Pstake_Lscosmos_V1beta1_QueryUnclaimedResponse>(),
        interceptors: self.interceptors?.makeUnclaimedInterceptors() ?? [],
        userFunction: self.unclaimed(request:context:)
      )

    case "FailedUnbondings":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Pstake_Lscosmos_V1beta1_QueryFailedUnbondingsRequest>(),
        responseSerializer: ProtobufSerializer<Pstake_Lscosmos_V1beta1_QueryFailedUnbondingsResponse>(),
        interceptors: self.interceptors?.makeFailedUnbondingsInterceptors() ?? [],
        userFunction: self.failedUnbondings(request:context:)
      )

    case "PendingUnbondings":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Pstake_Lscosmos_V1beta1_QueryPendingUnbondingsRequest>(),
        responseSerializer: ProtobufSerializer<Pstake_Lscosmos_V1beta1_QueryPendingUnbondingsResponse>(),
        interceptors: self.interceptors?.makePendingUnbondingsInterceptors() ?? [],
        userFunction: self.pendingUnbondings(request:context:)
      )

    case "UnbondingEpochCValue":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Pstake_Lscosmos_V1beta1_QueryUnbondingEpochCValueRequest>(),
        responseSerializer: ProtobufSerializer<Pstake_Lscosmos_V1beta1_QueryUnbondingEpochCValueResponse>(),
        interceptors: self.interceptors?.makeUnbondingEpochCValueInterceptors() ?? [],
        userFunction: self.unbondingEpochCValue(request:context:)
      )

    case "HostAccountUndelegation":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Pstake_Lscosmos_V1beta1_QueryHostAccountUndelegationRequest>(),
        responseSerializer: ProtobufSerializer<Pstake_Lscosmos_V1beta1_QueryHostAccountUndelegationResponse>(),
        interceptors: self.interceptors?.makeHostAccountUndelegationInterceptors() ?? [],
        userFunction: self.hostAccountUndelegation(request:context:)
      )

    case "DelegatorUnbondingEpochEntry":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Pstake_Lscosmos_V1beta1_QueryDelegatorUnbondingEpochEntryRequest>(),
        responseSerializer: ProtobufSerializer<Pstake_Lscosmos_V1beta1_QueryDelegatorUnbondingEpochEntryResponse>(),
        interceptors: self.interceptors?.makeDelegatorUnbondingEpochEntryInterceptors() ?? [],
        userFunction: self.delegatorUnbondingEpochEntry(request:context:)
      )

    case "HostAccounts":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Pstake_Lscosmos_V1beta1_QueryHostAccountsRequest>(),
        responseSerializer: ProtobufSerializer<Pstake_Lscosmos_V1beta1_QueryHostAccountsResponse>(),
        interceptors: self.interceptors?.makeHostAccountsInterceptors() ?? [],
        userFunction: self.hostAccounts(request:context:)
      )

    case "DepositModuleAccount":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Pstake_Lscosmos_V1beta1_QueryDepositModuleAccountRequest>(),
        responseSerializer: ProtobufSerializer<Pstake_Lscosmos_V1beta1_QueryDepositModuleAccountResponse>(),
        interceptors: self.interceptors?.makeDepositModuleAccountInterceptors() ?? [],
        userFunction: self.depositModuleAccount(request:context:)
      )

    case "DelegatorUnbondingEpochEntries":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Pstake_Lscosmos_V1beta1_QueryAllDelegatorUnbondingEpochEntriesRequest>(),
        responseSerializer: ProtobufSerializer<Pstake_Lscosmos_V1beta1_QueryAllDelegatorUnbondingEpochEntriesResponse>(),
        interceptors: self.interceptors?.makeDelegatorUnbondingEpochEntriesInterceptors() ?? [],
        userFunction: self.delegatorUnbondingEpochEntries(request:context:)
      )

    default:
      return nil
    }
  }
}

internal protocol Pstake_Lscosmos_V1beta1_QueryServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'params'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeParamsInterceptors() -> [ServerInterceptor<Pstake_Lscosmos_V1beta1_QueryParamsRequest, Pstake_Lscosmos_V1beta1_QueryParamsResponse>]

  /// - Returns: Interceptors to use when handling 'hostChainParams'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeHostChainParamsInterceptors() -> [ServerInterceptor<Pstake_Lscosmos_V1beta1_QueryHostChainParamsRequest, Pstake_Lscosmos_V1beta1_QueryHostChainParamsResponse>]

  /// - Returns: Interceptors to use when handling 'delegationState'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeDelegationStateInterceptors() -> [ServerInterceptor<Pstake_Lscosmos_V1beta1_QueryDelegationStateRequest, Pstake_Lscosmos_V1beta1_QueryDelegationStateResponse>]

  /// - Returns: Interceptors to use when handling 'allowListedValidators'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeAllowListedValidatorsInterceptors() -> [ServerInterceptor<Pstake_Lscosmos_V1beta1_QueryAllowListedValidatorsRequest, Pstake_Lscosmos_V1beta1_QueryAllowListedValidatorsResponse>]

  /// - Returns: Interceptors to use when handling 'cValue'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeCValueInterceptors() -> [ServerInterceptor<Pstake_Lscosmos_V1beta1_QueryCValueRequest, Pstake_Lscosmos_V1beta1_QueryCValueResponse>]

  /// - Returns: Interceptors to use when handling 'moduleState'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeModuleStateInterceptors() -> [ServerInterceptor<Pstake_Lscosmos_V1beta1_QueryModuleStateRequest, Pstake_Lscosmos_V1beta1_QueryModuleStateResponse>]

  /// - Returns: Interceptors to use when handling 'iBCTransientStore'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeIBCTransientStoreInterceptors() -> [ServerInterceptor<Pstake_Lscosmos_V1beta1_QueryIBCTransientStoreRequest, Pstake_Lscosmos_V1beta1_QueryIBCTransientStoreResponse>]

  /// - Returns: Interceptors to use when handling 'unclaimed'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeUnclaimedInterceptors() -> [ServerInterceptor<Pstake_Lscosmos_V1beta1_QueryUnclaimedRequest, Pstake_Lscosmos_V1beta1_QueryUnclaimedResponse>]

  /// - Returns: Interceptors to use when handling 'failedUnbondings'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeFailedUnbondingsInterceptors() -> [ServerInterceptor<Pstake_Lscosmos_V1beta1_QueryFailedUnbondingsRequest, Pstake_Lscosmos_V1beta1_QueryFailedUnbondingsResponse>]

  /// - Returns: Interceptors to use when handling 'pendingUnbondings'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePendingUnbondingsInterceptors() -> [ServerInterceptor<Pstake_Lscosmos_V1beta1_QueryPendingUnbondingsRequest, Pstake_Lscosmos_V1beta1_QueryPendingUnbondingsResponse>]

  /// - Returns: Interceptors to use when handling 'unbondingEpochCValue'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeUnbondingEpochCValueInterceptors() -> [ServerInterceptor<Pstake_Lscosmos_V1beta1_QueryUnbondingEpochCValueRequest, Pstake_Lscosmos_V1beta1_QueryUnbondingEpochCValueResponse>]

  /// - Returns: Interceptors to use when handling 'hostAccountUndelegation'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeHostAccountUndelegationInterceptors() -> [ServerInterceptor<Pstake_Lscosmos_V1beta1_QueryHostAccountUndelegationRequest, Pstake_Lscosmos_V1beta1_QueryHostAccountUndelegationResponse>]

  /// - Returns: Interceptors to use when handling 'delegatorUnbondingEpochEntry'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeDelegatorUnbondingEpochEntryInterceptors() -> [ServerInterceptor<Pstake_Lscosmos_V1beta1_QueryDelegatorUnbondingEpochEntryRequest, Pstake_Lscosmos_V1beta1_QueryDelegatorUnbondingEpochEntryResponse>]

  /// - Returns: Interceptors to use when handling 'hostAccounts'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeHostAccountsInterceptors() -> [ServerInterceptor<Pstake_Lscosmos_V1beta1_QueryHostAccountsRequest, Pstake_Lscosmos_V1beta1_QueryHostAccountsResponse>]

  /// - Returns: Interceptors to use when handling 'depositModuleAccount'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeDepositModuleAccountInterceptors() -> [ServerInterceptor<Pstake_Lscosmos_V1beta1_QueryDepositModuleAccountRequest, Pstake_Lscosmos_V1beta1_QueryDepositModuleAccountResponse>]

  /// - Returns: Interceptors to use when handling 'delegatorUnbondingEpochEntries'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeDelegatorUnbondingEpochEntriesInterceptors() -> [ServerInterceptor<Pstake_Lscosmos_V1beta1_QueryAllDelegatorUnbondingEpochEntriesRequest, Pstake_Lscosmos_V1beta1_QueryAllDelegatorUnbondingEpochEntriesResponse>]
}
