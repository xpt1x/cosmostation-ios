//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: stride/icacallbacks/query.proto
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
/// Usage: instantiate `Stride_Icacallbacks_QueryClient`, then call methods of this protocol to make API calls.
internal protocol Stride_Icacallbacks_QueryClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Stride_Icacallbacks_QueryClientInterceptorFactoryProtocol? { get }

  func params(
    _ request: Stride_Icacallbacks_QueryParamsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Stride_Icacallbacks_QueryParamsRequest, Stride_Icacallbacks_QueryParamsResponse>

  func callbackData(
    _ request: Stride_Icacallbacks_QueryGetCallbackDataRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Stride_Icacallbacks_QueryGetCallbackDataRequest, Stride_Icacallbacks_QueryGetCallbackDataResponse>

  func callbackDataAll(
    _ request: Stride_Icacallbacks_QueryAllCallbackDataRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Stride_Icacallbacks_QueryAllCallbackDataRequest, Stride_Icacallbacks_QueryAllCallbackDataResponse>
}

extension Stride_Icacallbacks_QueryClientProtocol {
  internal var serviceName: String {
    return "stride.icacallbacks.Query"
  }

  /// Parameters queries the parameters of the module.
  ///
  /// - Parameters:
  ///   - request: Request to send to Params.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func params(
    _ request: Stride_Icacallbacks_QueryParamsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Stride_Icacallbacks_QueryParamsRequest, Stride_Icacallbacks_QueryParamsResponse> {
    return self.makeUnaryCall(
      path: "/stride.icacallbacks.Query/Params",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeParamsInterceptors() ?? []
    )
  }

  /// Queries a CallbackData by index.
  ///
  /// - Parameters:
  ///   - request: Request to send to CallbackData.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func callbackData(
    _ request: Stride_Icacallbacks_QueryGetCallbackDataRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Stride_Icacallbacks_QueryGetCallbackDataRequest, Stride_Icacallbacks_QueryGetCallbackDataResponse> {
    return self.makeUnaryCall(
      path: "/stride.icacallbacks.Query/CallbackData",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCallbackDataInterceptors() ?? []
    )
  }

  /// Queries a list of CallbackData items.
  ///
  /// - Parameters:
  ///   - request: Request to send to CallbackDataAll.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func callbackDataAll(
    _ request: Stride_Icacallbacks_QueryAllCallbackDataRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Stride_Icacallbacks_QueryAllCallbackDataRequest, Stride_Icacallbacks_QueryAllCallbackDataResponse> {
    return self.makeUnaryCall(
      path: "/stride.icacallbacks.Query/CallbackDataAll",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCallbackDataAllInterceptors() ?? []
    )
  }
}

internal protocol Stride_Icacallbacks_QueryClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'params'.
  func makeParamsInterceptors() -> [ClientInterceptor<Stride_Icacallbacks_QueryParamsRequest, Stride_Icacallbacks_QueryParamsResponse>]

  /// - Returns: Interceptors to use when invoking 'callbackData'.
  func makeCallbackDataInterceptors() -> [ClientInterceptor<Stride_Icacallbacks_QueryGetCallbackDataRequest, Stride_Icacallbacks_QueryGetCallbackDataResponse>]

  /// - Returns: Interceptors to use when invoking 'callbackDataAll'.
  func makeCallbackDataAllInterceptors() -> [ClientInterceptor<Stride_Icacallbacks_QueryAllCallbackDataRequest, Stride_Icacallbacks_QueryAllCallbackDataResponse>]
}

internal final class Stride_Icacallbacks_QueryClient: Stride_Icacallbacks_QueryClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Stride_Icacallbacks_QueryClientInterceptorFactoryProtocol?

  /// Creates a client for the stride.icacallbacks.Query service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Stride_Icacallbacks_QueryClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Query defines the gRPC querier service.
///
/// To build a server, implement a class that conforms to this protocol.
internal protocol Stride_Icacallbacks_QueryProvider: CallHandlerProvider {
  var interceptors: Stride_Icacallbacks_QueryServerInterceptorFactoryProtocol? { get }

  /// Parameters queries the parameters of the module.
  func params(request: Stride_Icacallbacks_QueryParamsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Stride_Icacallbacks_QueryParamsResponse>

  /// Queries a CallbackData by index.
  func callbackData(request: Stride_Icacallbacks_QueryGetCallbackDataRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Stride_Icacallbacks_QueryGetCallbackDataResponse>

  /// Queries a list of CallbackData items.
  func callbackDataAll(request: Stride_Icacallbacks_QueryAllCallbackDataRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Stride_Icacallbacks_QueryAllCallbackDataResponse>
}

extension Stride_Icacallbacks_QueryProvider {
  internal var serviceName: Substring { return "stride.icacallbacks.Query" }

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
        requestDeserializer: ProtobufDeserializer<Stride_Icacallbacks_QueryParamsRequest>(),
        responseSerializer: ProtobufSerializer<Stride_Icacallbacks_QueryParamsResponse>(),
        interceptors: self.interceptors?.makeParamsInterceptors() ?? [],
        userFunction: self.params(request:context:)
      )

    case "CallbackData":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Stride_Icacallbacks_QueryGetCallbackDataRequest>(),
        responseSerializer: ProtobufSerializer<Stride_Icacallbacks_QueryGetCallbackDataResponse>(),
        interceptors: self.interceptors?.makeCallbackDataInterceptors() ?? [],
        userFunction: self.callbackData(request:context:)
      )

    case "CallbackDataAll":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Stride_Icacallbacks_QueryAllCallbackDataRequest>(),
        responseSerializer: ProtobufSerializer<Stride_Icacallbacks_QueryAllCallbackDataResponse>(),
        interceptors: self.interceptors?.makeCallbackDataAllInterceptors() ?? [],
        userFunction: self.callbackDataAll(request:context:)
      )

    default:
      return nil
    }
  }
}

internal protocol Stride_Icacallbacks_QueryServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'params'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeParamsInterceptors() -> [ServerInterceptor<Stride_Icacallbacks_QueryParamsRequest, Stride_Icacallbacks_QueryParamsResponse>]

  /// - Returns: Interceptors to use when handling 'callbackData'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeCallbackDataInterceptors() -> [ServerInterceptor<Stride_Icacallbacks_QueryGetCallbackDataRequest, Stride_Icacallbacks_QueryGetCallbackDataResponse>]

  /// - Returns: Interceptors to use when handling 'callbackDataAll'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeCallbackDataAllInterceptors() -> [ServerInterceptor<Stride_Icacallbacks_QueryAllCallbackDataRequest, Stride_Icacallbacks_QueryAllCallbackDataResponse>]
}
