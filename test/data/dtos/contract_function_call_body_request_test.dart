import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:polygonid_flutter_sdk/iden3comm/data/dtos/request/onchain/contract_function_call_body_request.dart';

String data = '''
{
  "transaction_data": {
    "contract_address": "0x0000000000000000000000000000000000000000",
    "method_id": "0x00000000",
    "chain_id": 1,
    "network": "mainnet"
  },
  "reason": "theTransactionReason",
  "scope": [
    {
      "id": 1,
      "circuit_id": "credentialAtomicQuerySig",
      "optional": false,
      "rules": {
        "audience": "0x8b5b5a6b4e6b0b6b2b6b4b6b6b6b6b6b6b6b6b6b",
        "challenge": 748916,
        "query": {
          "allowedIssuers": [
            "*"
          ],
          "challenge": 123456,
          "schema": {
            "type": "KYCAgeCredential",
            "url": "https://raw.githubusercontent.com/iden3/claim-schema-vocab/main/schemas/json-ld/kyc-v2.json-ld"
          },
          "req": {
            "birthday": {
              "\$lt": 20000101
            }
          }
        }
      }
    }
  ]
}
''';
var json = jsonDecode(data);

void main() {
  group("ContractFunctionCallBodyRequest", () {
    test("fromJson", () {
      var contractFunctionCallBodyRequest =
          ContractFunctionCallBodyRequest.fromJson(json);
      expect(contractFunctionCallBodyRequest.transactionData.contractAddress,
          "0x0000000000000000000000000000000000000000");
      expect(contractFunctionCallBodyRequest.transactionData.methodId,
          "0x00000000");
      expect(contractFunctionCallBodyRequest.transactionData.chainId, 1);
      expect(
          contractFunctionCallBodyRequest.transactionData.network, "mainnet");
      expect(contractFunctionCallBodyRequest.reason, "theTransactionReason");
      expect(contractFunctionCallBodyRequest.scope![0].id, 1);
      expect(contractFunctionCallBodyRequest.scope![0].circuit_id,
          "credentialAtomicQuerySig");
      expect(contractFunctionCallBodyRequest.scope![0].rules?.audience,
          "0x8b5b5a6b4e6b0b6b2b6b4b6b6b6b6b6b6b6b6b6b");
      expect(
          contractFunctionCallBodyRequest.scope![0].rules?.challenge, 748916);
      expect(
          contractFunctionCallBodyRequest
              .scope![0].rules?.query?.allowedIssuers![0],
          "*");
      expect(contractFunctionCallBodyRequest.scope![0].rules?.query?.challenge,
          123456);
      expect(
          contractFunctionCallBodyRequest.scope![0].rules?.query?.schema?.type,
          "KYCAgeCredential");
      expect(
          contractFunctionCallBodyRequest.scope![0].rules?.query?.schema?.url,
          "https://raw.githubusercontent.com/iden3/claim-schema-vocab/main/schemas/json-ld/kyc-v2.json-ld");
    });

    test("toJson", () {
      var contractFunctionCallBodyRequest =
          ContractFunctionCallBodyRequest.fromJson(json);
      expect(contractFunctionCallBodyRequest.toJson(), json);
    });
  });
}