// Mocks generated by Mockito 5.3.2 from annotations
// in polygonid_flutter_sdk/test/domain/use_cases/create_and_save_identity_use_case_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:mockito/mockito.dart' as _i1;
import 'package:polygonid_flutter_sdk/identity/domain/entities/identity_entity.dart'
    as _i3;
import 'package:polygonid_flutter_sdk/identity/domain/entities/private_identity_entity.dart'
    as _i2;
import 'package:polygonid_flutter_sdk/identity/domain/entities/rhs_node_entity.dart'
    as _i4;
import 'package:polygonid_flutter_sdk/identity/domain/repositories/identity_repository.dart'
    as _i5;

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

class _FakePrivateIdentityEntity_0 extends _i1.SmartFake
    implements _i2.PrivateIdentityEntity {
  _FakePrivateIdentityEntity_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeIdentityEntity_1 extends _i1.SmartFake
    implements _i3.IdentityEntity {
  _FakeIdentityEntity_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRhsNodeEntity_2 extends _i1.SmartFake implements _i4.RhsNodeEntity {
  _FakeRhsNodeEntity_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [IdentityRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIdentityRepository extends _i1.Mock
    implements _i5.IdentityRepository {
  MockIdentityRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.PrivateIdentityEntity> createIdentity({String? secret}) =>
      (super.noSuchMethod(
        Invocation.method(
          #createIdentity,
          [],
          {#secret: secret},
        ),
        returnValue: _i6.Future<_i2.PrivateIdentityEntity>.value(
            _FakePrivateIdentityEntity_0(
          this,
          Invocation.method(
            #createIdentity,
            [],
            {#secret: secret},
          ),
        )),
      ) as _i6.Future<_i2.PrivateIdentityEntity>);
  @override
  _i6.Future<void> storeIdentity({
    required _i3.IdentityEntity? identity,
    required String? privateKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #storeIdentity,
          [],
          {
            #identity: identity,
            #privateKey: privateKey,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> removeIdentity({
    required String? identifier,
    required String? privateKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeIdentity,
          [],
          {
            #identifier: identifier,
            #privateKey: privateKey,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<String> getIdentifier({required String? privateKey}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getIdentifier,
          [],
          {#privateKey: privateKey},
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<_i3.IdentityEntity> getIdentity({required String? identifier}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getIdentity,
          [],
          {#identifier: identifier},
        ),
        returnValue: _i6.Future<_i3.IdentityEntity>.value(_FakeIdentityEntity_1(
          this,
          Invocation.method(
            #getIdentity,
            [],
            {#identifier: identifier},
          ),
        )),
      ) as _i6.Future<_i3.IdentityEntity>);
  @override
  _i6.Future<_i2.PrivateIdentityEntity> getPrivateIdentity({
    required String? identifier,
    required String? privateKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPrivateIdentity,
          [],
          {
            #identifier: identifier,
            #privateKey: privateKey,
          },
        ),
        returnValue: _i6.Future<_i2.PrivateIdentityEntity>.value(
            _FakePrivateIdentityEntity_0(
          this,
          Invocation.method(
            #getPrivateIdentity,
            [],
            {
              #identifier: identifier,
              #privateKey: privateKey,
            },
          ),
        )),
      ) as _i6.Future<_i2.PrivateIdentityEntity>);
  @override
  _i6.Future<List<_i3.IdentityEntity>> getIdentities() => (super.noSuchMethod(
        Invocation.method(
          #getIdentities,
          [],
        ),
        returnValue:
            _i6.Future<List<_i3.IdentityEntity>>.value(<_i3.IdentityEntity>[]),
      ) as _i6.Future<List<_i3.IdentityEntity>>);
  @override
  _i6.Future<String> signMessage({
    required String? privateKey,
    required String? message,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #signMessage,
          [],
          {
            #privateKey: privateKey,
            #message: message,
          },
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<String> getDidIdentifier({
    required String? identifier,
    required String? networkName,
    required String? networkEnv,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getDidIdentifier,
          [],
          {
            #identifier: identifier,
            #networkName: networkName,
            #networkEnv: networkEnv,
          },
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<Map<String, dynamic>> getNonRevProof({
    required String? identityState,
    required int? nonce,
    required String? baseUrl,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getNonRevProof,
          [],
          {
            #identityState: identityState,
            #nonce: nonce,
            #baseUrl: baseUrl,
          },
        ),
        returnValue:
            _i6.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i6.Future<Map<String, dynamic>>);
  @override
  _i6.Future<String> getState({
    required String? identifier,
    required String? contractAddress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getState,
          [],
          {
            #identifier: identifier,
            #contractAddress: contractAddress,
          },
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<_i4.RhsNodeEntity> getStateRoots({required String? url}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getStateRoots,
          [],
          {#url: url},
        ),
        returnValue: _i6.Future<_i4.RhsNodeEntity>.value(_FakeRhsNodeEntity_2(
          this,
          Invocation.method(
            #getStateRoots,
            [],
            {#url: url},
          ),
        )),
      ) as _i6.Future<_i4.RhsNodeEntity>);
}
