// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_identity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrivateIdentityDTO _$PrivateIdentityDTOFromJson(Map<String, dynamic> json) =>
    PrivateIdentityDTO(
      identifier: json['identifier'] as String,
      publicKey:
          (json['publicKey'] as List<dynamic>).map((e) => e as String).toList(),
      privateKey: json['privateKey'] as String,
    );

Map<String, dynamic> _$PrivateIdentityDTOToJson(PrivateIdentityDTO instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'publicKey': instance.publicKey,
      'privateKey': instance.privateKey,
    };
