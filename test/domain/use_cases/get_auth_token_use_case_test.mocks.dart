// Mocks generated by Mockito 5.3.2 from annotations
// in polygonid_flutter_sdk/test/domain/use_cases/get_auth_token_use_case_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:typed_data' as _i10;

import 'package:mockito/mockito.dart' as _i1;
import 'package:polygonid_flutter_sdk/common/domain/entities/filter_entity.dart'
    as _i13;
import 'package:polygonid_flutter_sdk/credential/domain/entities/claim_entity.dart'
    as _i11;
import 'package:polygonid_flutter_sdk/iden3comm/domain/entities/iden3_message_entity.dart'
    as _i7;
import 'package:polygonid_flutter_sdk/iden3comm/domain/entities/proof_entity.dart'
    as _i8;
import 'package:polygonid_flutter_sdk/iden3comm/domain/entities/proof_request_entity.dart'
    as _i12;
import 'package:polygonid_flutter_sdk/iden3comm/domain/repositories/iden3comm_repository.dart'
    as _i4;
import 'package:polygonid_flutter_sdk/identity/domain/entities/private_identity_entity.dart'
    as _i6;
import 'package:polygonid_flutter_sdk/identity/libs/jwz/jwz_proof.dart' as _i3;
import 'package:polygonid_flutter_sdk/proof_generation/domain/entities/circuit_data_entity.dart'
    as _i2;
import 'package:polygonid_flutter_sdk/proof_generation/domain/repositories/proof_repository.dart'
    as _i9;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeCircuitDataEntity_0 extends _i1.SmartFake
    implements _i2.CircuitDataEntity {
  _FakeCircuitDataEntity_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeJWZProof_1 extends _i1.SmartFake implements _i3.JWZProof {
  _FakeJWZProof_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Iden3commRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIden3commRepository extends _i1.Mock
    implements _i4.Iden3commRepository {
  MockIden3commRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<void> authenticate({
    required String? url,
    required String? authToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #authenticate,
          [],
          {
            #url: url,
            #authToken: authToken,
          },
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<String> getAuthToken({
    required _i6.PrivateIdentityEntity? identityEntity,
    required String? message,
    required _i2.CircuitDataEntity? authData,
    required String? authClaim,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAuthToken,
          [],
          {
            #identityEntity: identityEntity,
            #message: message,
            #authData: authData,
            #authClaim: authClaim,
          },
        ),
        returnValue: _i5.Future<String>.value(''),
      ) as _i5.Future<String>);
  @override
  _i5.Future<String> getAuthResponse({
    required String? identifier,
    required _i7.Iden3MessageEntity? message,
    required List<_i8.ProofEntity>? scope,
    String? pushUrl,
    String? pushToken,
    String? didIdentifier,
    String? packageName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAuthResponse,
          [],
          {
            #identifier: identifier,
            #message: message,
            #scope: scope,
            #pushUrl: pushUrl,
            #pushToken: pushToken,
            #didIdentifier: didIdentifier,
            #packageName: packageName,
          },
        ),
        returnValue: _i5.Future<String>.value(''),
      ) as _i5.Future<String>);
  @override
  _i5.Future<String> getAuthCallback(
          {required _i7.Iden3MessageEntity? message}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAuthCallback,
          [],
          {#message: message},
        ),
        returnValue: _i5.Future<String>.value(''),
      ) as _i5.Future<String>);
}

/// A class which mocks [ProofRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockProofRepository extends _i1.Mock implements _i9.ProofRepository {
  MockProofRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<bool> isCircuitSupported({required String? circuitId}) =>
      (super.noSuchMethod(
        Invocation.method(
          #isCircuitSupported,
          [],
          {#circuitId: circuitId},
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<_i2.CircuitDataEntity> loadCircuitFiles(String? circuitId) =>
      (super.noSuchMethod(
        Invocation.method(
          #loadCircuitFiles,
          [circuitId],
        ),
        returnValue:
            _i5.Future<_i2.CircuitDataEntity>.value(_FakeCircuitDataEntity_0(
          this,
          Invocation.method(
            #loadCircuitFiles,
            [circuitId],
          ),
        )),
      ) as _i5.Future<_i2.CircuitDataEntity>);
  @override
  _i5.Future<_i10.Uint8List> calculateAtomicQueryInputs(
    String? challenge,
    _i11.ClaimEntity? authClaim,
    String? circuitId,
    _i12.ProofQueryParamEntity? queryParam,
    String? pubX,
    String? pubY,
    String? signature,
    Map<String, dynamic>? revocationStatus,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #calculateAtomicQueryInputs,
          [
            challenge,
            authClaim,
            circuitId,
            queryParam,
            pubX,
            pubY,
            signature,
            revocationStatus,
          ],
        ),
        returnValue: _i5.Future<_i10.Uint8List>.value(_i10.Uint8List(0)),
      ) as _i5.Future<_i10.Uint8List>);
  @override
  _i5.Future<_i10.Uint8List> calculateWitness(
    _i2.CircuitDataEntity? circuitData,
    _i10.Uint8List? atomicQueryInputs,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #calculateWitness,
          [
            circuitData,
            atomicQueryInputs,
          ],
        ),
        returnValue: _i5.Future<_i10.Uint8List>.value(_i10.Uint8List(0)),
      ) as _i5.Future<_i10.Uint8List>);
  @override
  _i5.Future<_i3.JWZProof> prove(
    _i2.CircuitDataEntity? circuitData,
    _i10.Uint8List? wtnsBytes,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #prove,
          [
            circuitData,
            wtnsBytes,
          ],
        ),
        returnValue: _i5.Future<_i3.JWZProof>.value(_FakeJWZProof_1(
          this,
          Invocation.method(
            #prove,
            [
              circuitData,
              wtnsBytes,
            ],
          ),
        )),
      ) as _i5.Future<_i3.JWZProof>);
  @override
  _i5.Future<List<_i13.FilterEntity>> getFilters(
          {required _i12.ProofRequestEntity? request}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFilters,
          [],
          {#request: request},
        ),
        returnValue:
            _i5.Future<List<_i13.FilterEntity>>.value(<_i13.FilterEntity>[]),
      ) as _i5.Future<List<_i13.FilterEntity>>);
  @override
  _i5.Future<List<_i12.ProofRequestEntity>> getRequests(
          {required _i7.Iden3MessageEntity? message}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRequests,
          [],
          {#message: message},
        ),
        returnValue: _i5.Future<List<_i12.ProofRequestEntity>>.value(
            <_i12.ProofRequestEntity>[]),
      ) as _i5.Future<List<_i12.ProofRequestEntity>>);
}
