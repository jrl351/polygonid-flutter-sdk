import 'package:polygonid_flutter_sdk/common/domain/use_cases/get_config_use_case.dart';
import 'package:polygonid_flutter_sdk/credential/domain/entities/claim_entity.dart';
import 'package:polygonid_flutter_sdk/credential/domain/repositories/credential_repository.dart';
import 'package:polygonid_flutter_sdk/identity/domain/use_cases/fetch_identity_state_use_case.dart';

import '../../../common/domain/domain_logger.dart';
import '../../../common/domain/use_case.dart';
import '../repositories/identity_repository.dart';

class GenerateNonRevProofUseCase
    extends FutureUseCase<ClaimEntity, Map<String, dynamic>> {
  final IdentityRepository _identityRepository;
  final CredentialRepository _credentialRepository;
  final GetEnvConfigUseCase _getEnvConfigUseCase;
  final FetchIdentityStateUseCase _fetchIdentityStateUseCase;

  GenerateNonRevProofUseCase(
      this._identityRepository,
      this._credentialRepository,
      this._getEnvConfigUseCase,
      this._fetchIdentityStateUseCase);

  @override
  Future<Map<String, dynamic>> execute({required ClaimEntity param}) {
    return _credentialRepository
        .getRhsRevocationId(claim: param)
        .then((id) => _fetchIdentityStateUseCase.execute(param: id))
        .then((identityState) => Future.wait<dynamic>([
              _credentialRepository.getRevocationNonce(claim: param),
              _getEnvConfigUseCase.execute(
                  param: PolygonIdConfig.reverseHashServiceUrl),
            ]).then((values) => _identityRepository.getNonRevProof(
                identityState, values[0], values[1])))
        .then((nonRevProof) {
      logger().i("[GenerateNonRevProofUseCase] Non rev proof: $nonRevProof");

      return nonRevProof;
    }).catchError((error) {
      logger().e("[GenerateNonRevProofUseCase] Error: $error");

      throw error;
    });
  }
}
