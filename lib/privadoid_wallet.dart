import 'dart:math';
import 'dart:typed_data';

import 'package:polygonid_flutter_sdk/constants.dart';
import 'package:polygonid_flutter_sdk/utils/hex_utils.dart';
import 'package:polygonid_flutter_sdk/utils/uint8_list_utils.dart';
import 'package:web3dart/credentials.dart';
import 'package:web3dart/crypto.dart';

import 'eddsa_babyjub.dart' as eddsaBabyJub;
import 'eddsa_babyjub.dart';

// TODO: move impl to a DS and transform this class to an entity
/// @class
/// Manage Babyjubjub keys
/// Perform standard wallet actions
class PrivadoIdWallet {
  late Uint8List privateKey;
  dynamic publicKey;
  dynamic publicKeyHex;
  String? publicKeyCompressed;
  String? publicKeyCompressedHex;
  String? publicKeyBase64;

  /// Initialize Babyjubjub wallet from private key
  ///
  /// @param [Uint8List] privateKey - 32 bytes buffer
  PrivadoIdWallet(this.privateKey) {
    if (privateKey.length != 32) {
      throw ArgumentError('buf must be 32 bytes');
    }

    final priv = eddsaBabyJub.PrivateKey(privateKey);
    final eddsaBabyJub.PublicKey publicKey = priv.public();
    this.publicKey = [publicKey.p[0].toString(), publicKey.p[1].toString()];
    publicKeyHex = [
      publicKey.p[0].toRadixString(16).padLeft(64, '0'),
      publicKey.p[1].toRadixString(16).padLeft(64, '0')
    ];
    final compressedPublicKey =
        Uint8ArrayUtils.leBuff2int(publicKey.compress());
    publicKeyCompressed = compressedPublicKey.toString();
    publicKeyCompressedHex =
        compressedPublicKey.toRadixString(16).padLeft(64, '0');
    publicKeyBase64 = HexUtils.hexToBase64BJJ(publicKeyCompressedHex!);
  }

  /// Creates a PrivadoIdWallet
  ///
  /// This creates a wallet
  /// Random wallet is created if no private key is provided
  ///
  /// @param [Uint8List] privateKey - 32 bytes buffer
  /// @returns [PrivadoIdWallet] privadoIdWallet - PrivadoIdWallet instance
  static Future<PrivadoIdWallet> createPrivadoIdWallet(
      {Uint8List? privateKey}) async {
    Uint8List privateBjjKey = privateKey ?? Uint8List(32);
    if (privateKey == null) {
      final prvKey = EthPrivateKey.createRandom(Random.secure());
      final signature = await prvKey.sign(Uint8ArrayUtils.uint8ListfromString(
          PRIVADOID_ACCOUNT_ACCESS_MESSAGE));
      privateBjjKey = keccak256(signature);
    }
    final privadoIdWallet = PrivadoIdWallet(privateBjjKey);
    return privadoIdWallet;
  }

  // Hash message with poseidon
  /// @param [String] messageStr - message to hash
  /// @returns [String] - hash poseidon
  String hashMessage(
      String claimsTreeRoot, String revocationTree, String rootsTreeRoot) {
    final hash = hashPoseidon(claimsTreeRoot, revocationTree, rootsTreeRoot);
    return hash;
  }
}
