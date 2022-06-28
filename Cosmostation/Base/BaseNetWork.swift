//
//  BaseNetWork.swift
//  Cosmostation
//
//  Created by 정용주 on 2020/12/09.
//  Copyright © 2020 wannabit. All rights reserved.
//

import Foundation
import GRPC
import NIO


class BaseNetWork {
    
    static func nodeInfoUrl(_ chain: ChainType?) -> String {
        if let chainConfig = ChainFactory.getChainConfig(chain) {
            if (chainConfig.chainType == .BINANCE_MAIN) {
                return chainConfig.lcdUrl + "api/v1/node-info"
            } else if (chainConfig.chainType == .OKEX_MAIN) {
                return chainConfig.lcdUrl + "node_info"
            }
        }
        return ""
    }
    
    static func accountInfoUrl(_ chain: ChainType?, _ address: String) -> String {
        if (chain == ChainType.BINANCE_MAIN) {
            return BNB_URL + "api/v1/account/" + address
        } else if (chain == ChainType.OKEX_MAIN) {
            return OKEX_URL + "auth/accounts/" + address
        }
        return ""
    }
    
    static func validatorsUrl(_ chain: ChainType?) -> String {
        if (chain == ChainType.OKEX_MAIN) {
            return OKEX_URL + "staking/validators"
        }
        return ""
    }
    
    static func bondingsUrl(_ chain: ChainType, _ address: String) -> String {
        if (chain == ChainType.KAVA_MAIN) {
            return KAVA_URL + "staking/delegators/" + address + "/delegations"
        }
        return ""
    }
    
    static func unbondingsUrl(_ chain: ChainType, _ address: String) -> String {
        if (chain == ChainType.KAVA_MAIN) {
            return KAVA_URL + "staking/delegators/" + address + "/unbonding_delegations"
        }
        return ""
    }
    
    static func rewardsUrl(_ chain: ChainType, _ address: String) -> String {
        if (chain == ChainType.KAVA_MAIN) {
            return KAVA_URL + "distribution/delegators/" + address + "/rewards"
        }
        return ""
    }
    
    //handle certick proto parisng error
    static func myVoteUrl(_ chain: ChainType, _ proposalId: String,  _ address: String) -> String {
        if (chain == ChainType.CERTIK_MAIN) {
            return CERTIK_URL + "shentu/gov/v1alpha1/proposals/" + proposalId + "/votes/" + address
        }
        return ""
    }
    
    
    static func txUrl(_ chain: ChainType?, _ txhash: String) -> String {
        if (chain == ChainType.BINANCE_MAIN) {
            return BNB_URL + "api/v1/tx/" + txhash
        } else if (chain == ChainType.OKEX_MAIN) {
            return OKEX_URL + "txs/" + txhash
        } else if (chain == ChainType.KAVA_MAIN) {
            return KAVA_URL + "txs/" + txhash
        }
        return ""
    }
    
    static func broadcastUrl(_ chain: ChainType?) -> String {
        if (chain == ChainType.BINANCE_MAIN) {
            return BNB_URL + "api/v1/broadcast"
        } else if (chain == ChainType.OKEX_MAIN) {
            return OKEX_URL + "txs"
        } else if (chain == ChainType.KAVA_MAIN) {
            return KAVA_URL + "txs"
        }
        return ""
    }
    
    
    //for Binance
    static func bnbTokenUrl(_ chain: ChainType) -> String {
        if (chain == ChainType.BINANCE_MAIN ) {
            return BNB_URL + "api/v1/tokens"
        }
        return ""
    }
    
    static func bnbMiniTokenUrl(_ chain: ChainType) -> String {
        if (chain == ChainType.BINANCE_MAIN ) {
            return BNB_URL + "api/v1/mini/tokens"
        }
        return ""
    }
    
    static func bnbTicUrl(_ chain: ChainType?) -> String {
        if (chain == ChainType.BINANCE_MAIN ) {
            return BNB_URL + "api/v1/ticker/24hr"
        }
        return ""
    }
    
    static func bnbMiniTicUrl(_ chain: ChainType) -> String {
        if (chain == ChainType.BINANCE_MAIN ) {
            return BNB_URL + "api/v1/mini/ticker/24hr"
        }
        return ""
    }
    
    //for Kava (using cuz kava query limitation)
    static func paramIncentiveUrl(_ chain: ChainType) -> String {
        if (chain == ChainType.KAVA_MAIN ) {
            return KAVA_URL + "incentive/parameters"
        }
        return ""
    }
    
    static func depositCdpUrl(_ chain: ChainType?, _ address: String, _ collateralType: String) -> String {
        if (chain == ChainType.KAVA_MAIN ) {
            return KAVA_URL + "cdp/cdps/cdp/deposits/" + address + "/" + collateralType
        }
        return ""
    }
    
    static func managerHardPoolUrl(_ chain: ChainType?) -> String {
        if (chain == ChainType.KAVA_MAIN ) {
            return KAVA_URL + "hard/accounts"
        }
        return ""
    }

    static func incentiveUrl(_ chain: ChainType?) -> String {
        if (chain == ChainType.KAVA_MAIN ) {
            return KAVA_URL + "incentive/rewards"
        }
        return ""
    }
    
    static func paramBep3Url(_ chain: ChainType?) -> String {
        if (chain == ChainType.KAVA_MAIN || chain == ChainType.BINANCE_MAIN) {
            return KAVA_URL + "bep3/parameters"
        }
        return ""
    }
    
    static func supplyBep3Url(_ chain: ChainType?) -> String {
        if (chain == ChainType.KAVA_MAIN || chain == ChainType.BINANCE_MAIN) {
            return KAVA_URL + "bep3/supplies"
        }
        return ""
    }
    
    static func swapIdBep3Url(_ chain: ChainType?, _ id: String) -> String {
        if (chain == ChainType.KAVA_MAIN) {
            return KAVA_URL + "bep3/swap/" + id
        } else if (chain == ChainType.BINANCE_MAIN) {
            return BNB_URL + "api/v1/atomic-swaps/" + id
        }
        return ""
    }
    
    
    //for Okex
    static func balanceOkUrl(_ chain: ChainType?, _ address: String) -> String {
        if (chain == ChainType.OKEX_MAIN ) {
            return OKEX_URL + "accounts/" + address
        }
        return ""
    }
    
    static func stakingOkUrl(_ chain: ChainType, _ address: String) -> String {
        if (chain == ChainType.OKEX_MAIN ) {
            return OKEX_URL + "staking/delegators/" + address
        }
        return ""
    }
    
    static func unbondingOkUrl(_ chain: ChainType, _ address: String) -> String {
        if (chain == ChainType.OKEX_MAIN ) {
            return OKEX_URL + "staking/delegators/" + address + "/unbonding_delegations"
        }
        return ""
    }
    
    static func tokenListOkUrl(_ chain: ChainType) -> String {
        if (chain == ChainType.OKEX_MAIN ) {
            return OKEX_URL + "tokens"
        }
        return ""
    }
    
    static func tickerListOkUrl(_ chain: ChainType) -> String {
        if (chain == ChainType.OKEX_MAIN ) {
            return OKEX_URL + "tickers"
        }
        return ""
    }
    
    //sif
//    static func vsIncentiveUrl(_ address: String) -> String {
//        return SIF_FINANCE_API + "api/vs?key=userData&address=" + address + "&timestamp=now"
//    }
//    
//    static func lmIncentiveUrl(_ address: String) -> String {
//        return SIF_FINANCE_API + "api/lm?key=userData&address=" + address + "&timestamp=now"
//    }

    
    //rizon
    static func rizonSwapStatus(_ chain: ChainType?, _ address: String) -> String {
        if (chain == ChainType.RIZON_MAIN) {
            return RIZON_SWAP_STATUS + "swaps/rizon/" + address
        }
        return ""
    }
    
    
    //hdac
    static func hdacTxDetail(_ chain: ChainType?, _ hash: String) -> String {
        if (chain == ChainType.RIZON_MAIN) {
            return HDAC_MAINNET + "tx/" + hash
        }
        return ""
    }
    
    static func hdacBalance(_ chain: ChainType?, _ address: String) -> String {
        if (chain == ChainType.RIZON_MAIN) {
            return HDAC_MAINNET + "addr/" + address + "/utxo"
        }
        return ""
    }
    
    static func hdacBroadcast(_ chain: ChainType?) -> String {
        if (chain == ChainType.RIZON_MAIN) {
            return HDAC_MAINNET + "tx/send"
        }
        return ""
    }
    
    
    //Desmos
    static func desmosFeeCheck() -> String {
        return DESMOS_AIRDROP_URL + "airdrop/grants"
    }
    
    static func desmosClaimableCheck(_ address: String) -> String {
        return DESMOS_AIRDROP_URL + "users/" + address
    }
    
    static func desmosClaim() -> String {
        return DESMOS_AIRDROP_URL + "airdrop/claims"
    }
    
    
    //mintscan
    static func mintscanProposals(_ chainConfig: ChainConfig) -> String {
        let chainName = WUtils.getChainNameByBaseChain(chainConfig)
        return MINTSCAN_API_URL + "v1/" + chainName + "/proposals"
    }
    
    static func mintscanProposalDetail(_ chainConfig: ChainConfig, _ proposalId: String) -> String {
        let chainName = WUtils.getChainNameByBaseChain(chainConfig)
        return MINTSCAN_API_URL + "v1/" + chainName + "/proposals/" + proposalId
    }
    
    static func mintscanAssets() -> String {
        return MINTSCAN_API_URL + "v1/assets"
    }
    
    static func mintscanCw20() -> String {
        return MINTSCAN_API_URL + "v1/assets/cw20"
    }
    
    
    
    
    static func accountHistory(_ chain: ChainType, _ address: String) -> String {
        guard let chainConfig = ChainFactory.getChainConfig(chain) else {
            return ""
        }
        if (chainConfig.chainType == .BINANCE_MAIN) {
            return chainConfig.apiUrl + "api/v1/transactions"
        } else if (chainConfig.chainType == .OKEX_MAIN) {
            return chainConfig.apiUrl + "okexchain/addresses/" + address + "/transactions/condition?limit=20"
        } else {
            return chainConfig.apiUrl + "v1/account/new_txs/" + address
        }
    }
    
    static func accountStakingHistory(_ chain: ChainType, _ address: String, _ valAddress: String) -> String {
        guard let chainConfig = ChainFactory.getChainConfig(chain) else {
            return ""
        }
        return chainConfig.apiUrl + "v1/account/new_txs/" + address + "/" + valAddress
    }
    
    
    
    static func getPrices(_ chain : ChainType) -> String {
        if (ChainType.IS_TESTNET(chain)) {
            return STATION_TEST_URL + "v1/market/prices"
        }
        return STATION_URL + "v1/market/prices"
    }
    
    static func getParams(_ chain : ChainType, _ chainId: String) -> String {
        if (ChainType.IS_TESTNET(chain)) {
            return STATION_TEST_URL + "v1/params/" + chainId
        }
        return STATION_URL + "v1/params/" + chainId
    }
    
    static func getIbcPaths(_ chain : ChainType, _ chainId: String) -> String {
        if (ChainType.IS_TESTNET(chain)) {
            return STATION_TEST_URL + "v1/ibc/paths/" + chainId
        }
        return STATION_URL + "v1/ibc/paths/" + chainId
    }
    
    static func getIbcTokens(_ chain : ChainType, _ chainId: String) -> String {
        if (ChainType.IS_TESTNET(chain)) {
            return STATION_TEST_URL + "v1/ibc/tokens/" + chainId
        }
        return STATION_URL + "v1/ibc/tokens/" + chainId
    }
    
    static func getConnection(_ chain: ChainType, _ group: MultiThreadedEventLoopGroup) -> ClientConnection? {
        guard let chainConfig = ChainFactory.getChainConfig(chain) else {
            return nil
        }
        return ClientConnection.insecure(group: group).connect(host: chainConfig.grpcUrl, port: chainConfig.grpcPort)
    }
    
    static func getCallOptions() -> CallOptions {
        var callOptions = CallOptions()
        callOptions.timeLimit = TimeLimit.timeout(TimeAmount.milliseconds(8000))
        return callOptions
    }
    
}

