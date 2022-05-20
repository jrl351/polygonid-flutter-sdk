/*
{
  "type": "https://iden3-communication.io/authorization-response/v1",
  "data": {
    "scope": [
      {
        "type": "zeroknowledge",
        "circuit_id": "auth",
        "pub_signals": [
          "383481829333688262229762912714748186426235428103586432827469388069546950656",
          "12345"
        ],
        "proof_data": {
          "pi_a": [
            "14146277947056297753840642586002829867111675410988595047766001252156753371528",
            "14571022849315211248046007113544986624773029852663683182064313232057584750907",
            "1"
          ],
          "pi_b": [
            [
              "16643510334478363316178974136322830670001098048711963846055396047727066595515",
              "10398230582752448515583571758866992012509398625081722188208617704185602394573"
            ],
            [
              "6754852150473185509183929580585027939167256175425095292505368999953776521762",
              "4988338043999536569468301597030911639875135237017470300699903062776921637682"
            ],
            [
              "1",
              "0"
            ]
          ],
          "pi_c": [
            "17016608018243685488662035612576776697709541343999980909476169114486580874935",
            "1344455328868272682523157740509602348889110849570014394831093852006878298645",
            "1"
          ],
          "protocol": "groth16"
        }
      }
    ]
  }
}


{
  "type": "https://iden3-communication.io/authorization-request/v1",
  "data": {
    "callbackUrl": "https://auth-demo.idyllicvision.com/callback?id=27887",
    "audience": "1125GJqgw6YEsKFwj63GY87MMxPL9kwDKxPUiwMLNZ",
    "scope": [
      {
        "circuit_id": "auth",
        "type": "zeroknowledge",
        "rules": {
          "audience": "1125GJqgw6YEsKFwj63GY87MMxPL9kwDKxPUiwMLNZ",
          "challenge": 27887
        }
      }
    ]
  }
}


*/

class CredentialCredentialProofState {
  final int? block_number;
  final int? block_timestamp;
  final String? claims_tree_root;
  final String? revocation_tree_root;
  final String? root_of_roots;
  final String? tx_id;
  final String? value;

  CredentialCredentialProofState({
    this.block_number,
    this.block_timestamp,
    this.claims_tree_root,
    this.revocation_tree_root,
    this.root_of_roots,
    this.tx_id,
    this.value,
  });

  /// Creates an instance from the given json
  ///
  /// @param [Map<String, dynamic>] json
  /// @returns [CredentialCredentialProofState]
  factory CredentialCredentialProofState.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      return CredentialCredentialProofState(
        block_number: json['block_number'],
        block_timestamp: json['block_timestamp'],
        claims_tree_root: json['claims_tree_root'],
        revocation_tree_root: json['revocation_tree_root'],
        root_of_roots: json['root_of_roots'],
        tx_id: json['tx_id'],
        value: json['value'],
      );
    } else {
      throw "something went wrong";
    }
  }

  Map<String, dynamic> toJson() => {
        'block_number': block_number,
        'block_timestamp': block_timestamp,
        'claims_tree_root': claims_tree_root,
        'revocation_tree_root': revocation_tree_root,
        'root_of_roots': root_of_roots,
        'tx_id': tx_id,
        'value': value,
      };
}
