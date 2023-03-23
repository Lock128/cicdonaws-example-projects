/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the Match type in your schema. */
@immutable
class Match extends Model {
  static const classType = const _MatchModelType();
  final String id;
  final String? _AwayTeamId;
  final String? _AwayTeamName;
  final TemporalDate? _Date;
  final int? _FTAGq;
  final int? _FTHGq;
  final String? _FTRq;
  final int? _HTAGq;
  final int? _HTHGq;
  final String? _HTRq;
  final String? _HomeTeamId;
  final String? _HomeTeamName;
  final int? _Matchday;
  final String? _PartitionKey;
  final String? _SecondaryKey;
  final String? _Season;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  MatchModelIdentifier get modelIdentifier {
    return MatchModelIdentifier(id: id);
  }

  String get AwayTeamId {
    try {
      return _AwayTeamId!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get AwayTeamName {
    try {
      return _AwayTeamName!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  TemporalDate get Date {
    try {
      return _Date!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  int? get FTAGq {
    return _FTAGq;
  }

  int? get FTHGq {
    return _FTHGq;
  }

  String? get FTRq {
    return _FTRq;
  }

  int? get HTAGq {
    return _HTAGq;
  }

  int? get HTHGq {
    return _HTHGq;
  }

  String? get HTRq {
    return _HTRq;
  }

  String get HomeTeamId {
    try {
      return _HomeTeamId!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get HomeTeamName {
    try {
      return _HomeTeamName!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  int get Matchday {
    try {
      return _Matchday!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get PartitionKey {
    try {
      return _PartitionKey!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get SecondaryKey {
    try {
      return _SecondaryKey!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get Season {
    try {
      return _Season!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const Match._internal(
      {required this.id,
      required AwayTeamId,
      required AwayTeamName,
      required Date,
      FTAGq,
      FTHGq,
      FTRq,
      HTAGq,
      HTHGq,
      HTRq,
      required HomeTeamId,
      required HomeTeamName,
      required Matchday,
      required PartitionKey,
      required SecondaryKey,
      required Season,
      createdAt,
      updatedAt})
      : _AwayTeamId = AwayTeamId,
        _AwayTeamName = AwayTeamName,
        _Date = Date,
        _FTAGq = FTAGq,
        _FTHGq = FTHGq,
        _FTRq = FTRq,
        _HTAGq = HTAGq,
        _HTHGq = HTHGq,
        _HTRq = HTRq,
        _HomeTeamId = HomeTeamId,
        _HomeTeamName = HomeTeamName,
        _Matchday = Matchday,
        _PartitionKey = PartitionKey,
        _SecondaryKey = SecondaryKey,
        _Season = Season,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory Match(
      {String? id,
      required String AwayTeamId,
      required String AwayTeamName,
      required TemporalDate Date,
      int? FTAGq,
      int? FTHGq,
      String? FTRq,
      int? HTAGq,
      int? HTHGq,
      String? HTRq,
      required String HomeTeamId,
      required String HomeTeamName,
      required int Matchday,
      required String PartitionKey,
      required String SecondaryKey,
      required String Season}) {
    return Match._internal(
        id: id == null ? UUID.getUUID() : id,
        AwayTeamId: AwayTeamId,
        AwayTeamName: AwayTeamName,
        Date: Date,
        FTAGq: FTAGq,
        FTHGq: FTHGq,
        FTRq: FTRq,
        HTAGq: HTAGq,
        HTHGq: HTHGq,
        HTRq: HTRq,
        HomeTeamId: HomeTeamId,
        HomeTeamName: HomeTeamName,
        Matchday: Matchday,
        PartitionKey: PartitionKey,
        SecondaryKey: SecondaryKey,
        Season: Season);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Match &&
        id == other.id &&
        _AwayTeamId == other._AwayTeamId &&
        _AwayTeamName == other._AwayTeamName &&
        _Date == other._Date &&
        _FTAGq == other._FTAGq &&
        _FTHGq == other._FTHGq &&
        _FTRq == other._FTRq &&
        _HTAGq == other._HTAGq &&
        _HTHGq == other._HTHGq &&
        _HTRq == other._HTRq &&
        _HomeTeamId == other._HomeTeamId &&
        _HomeTeamName == other._HomeTeamName &&
        _Matchday == other._Matchday &&
        _PartitionKey == other._PartitionKey &&
        _SecondaryKey == other._SecondaryKey &&
        _Season == other._Season;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Match {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("AwayTeamId=" + "$_AwayTeamId" + ", ");
    buffer.write("AwayTeamName=" + "$_AwayTeamName" + ", ");
    buffer.write("Date=" + (_Date != null ? _Date!.format() : "null") + ", ");
    buffer.write(
        "FTAGq=" + (_FTAGq != null ? _FTAGq!.toString() : "null") + ", ");
    buffer.write(
        "FTHGq=" + (_FTHGq != null ? _FTHGq!.toString() : "null") + ", ");
    buffer.write("FTRq=" + "$_FTRq" + ", ");
    buffer.write(
        "HTAGq=" + (_HTAGq != null ? _HTAGq!.toString() : "null") + ", ");
    buffer.write(
        "HTHGq=" + (_HTHGq != null ? _HTHGq!.toString() : "null") + ", ");
    buffer.write("HTRq=" + "$_HTRq" + ", ");
    buffer.write("HomeTeamId=" + "$_HomeTeamId" + ", ");
    buffer.write("HomeTeamName=" + "$_HomeTeamName" + ", ");
    buffer.write("Matchday=" +
        (_Matchday != null ? _Matchday!.toString() : "null") +
        ", ");
    buffer.write("PartitionKey=" + "$_PartitionKey" + ", ");
    buffer.write("SecondaryKey=" + "$_SecondaryKey" + ", ");
    buffer.write("Season=" + "$_Season" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  Match copyWith(
      {String? AwayTeamId,
      String? AwayTeamName,
      TemporalDate? Date,
      int? FTAGq,
      int? FTHGq,
      String? FTRq,
      int? HTAGq,
      int? HTHGq,
      String? HTRq,
      String? HomeTeamId,
      String? HomeTeamName,
      int? Matchday,
      String? PartitionKey,
      String? SecondaryKey,
      String? Season}) {
    return Match._internal(
        id: id,
        AwayTeamId: AwayTeamId ?? this.AwayTeamId,
        AwayTeamName: AwayTeamName ?? this.AwayTeamName,
        Date: Date ?? this.Date,
        FTAGq: FTAGq ?? this.FTAGq,
        FTHGq: FTHGq ?? this.FTHGq,
        FTRq: FTRq ?? this.FTRq,
        HTAGq: HTAGq ?? this.HTAGq,
        HTHGq: HTHGq ?? this.HTHGq,
        HTRq: HTRq ?? this.HTRq,
        HomeTeamId: HomeTeamId ?? this.HomeTeamId,
        HomeTeamName: HomeTeamName ?? this.HomeTeamName,
        Matchday: Matchday ?? this.Matchday,
        PartitionKey: PartitionKey ?? this.PartitionKey,
        SecondaryKey: SecondaryKey ?? this.SecondaryKey,
        Season: Season ?? this.Season);
  }

  Match.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _AwayTeamId = json['AwayTeamId'],
        _AwayTeamName = json['AwayTeamName'],
        _Date =
            json['Date'] != null ? TemporalDate.fromString(json['Date']) : null,
        _FTAGq = (json['FTAGq'] as num?)?.toInt(),
        _FTHGq = (json['FTHGq'] as num?)?.toInt(),
        _FTRq = json['FTRq'],
        _HTAGq = (json['HTAGq'] as num?)?.toInt(),
        _HTHGq = (json['HTHGq'] as num?)?.toInt(),
        _HTRq = json['HTRq'],
        _HomeTeamId = json['HomeTeamId'],
        _HomeTeamName = json['HomeTeamName'],
        _Matchday = (json['Matchday'] as num?)?.toInt(),
        _PartitionKey = json['PartitionKey'],
        _SecondaryKey = json['SecondaryKey'],
        _Season = json['Season'],
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'AwayTeamId': _AwayTeamId,
        'AwayTeamName': _AwayTeamName,
        'Date': _Date?.format(),
        'FTAGq': _FTAGq,
        'FTHGq': _FTHGq,
        'FTRq': _FTRq,
        'HTAGq': _HTAGq,
        'HTHGq': _HTHGq,
        'HTRq': _HTRq,
        'HomeTeamId': _HomeTeamId,
        'HomeTeamName': _HomeTeamName,
        'Matchday': _Matchday,
        'PartitionKey': _PartitionKey,
        'SecondaryKey': _SecondaryKey,
        'Season': _Season,
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'AwayTeamId': _AwayTeamId,
        'AwayTeamName': _AwayTeamName,
        'Date': _Date,
        'FTAGq': _FTAGq,
        'FTHGq': _FTHGq,
        'FTRq': _FTRq,
        'HTAGq': _HTAGq,
        'HTHGq': _HTHGq,
        'HTRq': _HTRq,
        'HomeTeamId': _HomeTeamId,
        'HomeTeamName': _HomeTeamName,
        'Matchday': _Matchday,
        'PartitionKey': _PartitionKey,
        'SecondaryKey': _SecondaryKey,
        'Season': _Season,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final QueryModelIdentifier<MatchModelIdentifier> MODEL_IDENTIFIER =
      QueryModelIdentifier<MatchModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField AWAYTEAMID = QueryField(fieldName: "AwayTeamId");
  static final QueryField AWAYTEAMNAME = QueryField(fieldName: "AwayTeamName");
  static final QueryField DATE = QueryField(fieldName: "Date");
  static final QueryField FTAGQ = QueryField(fieldName: "FTAGq");
  static final QueryField FTHGQ = QueryField(fieldName: "FTHGq");
  static final QueryField FTRQ = QueryField(fieldName: "FTRq");
  static final QueryField HTAGQ = QueryField(fieldName: "HTAGq");
  static final QueryField HTHGQ = QueryField(fieldName: "HTHGq");
  static final QueryField HTRQ = QueryField(fieldName: "HTRq");
  static final QueryField HOMETEAMID = QueryField(fieldName: "HomeTeamId");
  static final QueryField HOMETEAMNAME = QueryField(fieldName: "HomeTeamName");
  static final QueryField MATCHDAY = QueryField(fieldName: "Matchday");
  static final QueryField PARTITIONKEY = QueryField(fieldName: "PartitionKey");
  static final QueryField SECONDARYKEY = QueryField(fieldName: "SecondaryKey");
  static final QueryField SEASON = QueryField(fieldName: "Season");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Match";
    modelSchemaDefinition.pluralName = "Matches";

    modelSchemaDefinition.authRules = [
      AuthRule(
          authStrategy: AuthStrategy.PUBLIC,
          provider: AuthRuleProvider.APIKEY,
          operations: [
            ModelOperation.CREATE,
            ModelOperation.UPDATE,
            ModelOperation.DELETE,
            ModelOperation.READ
          ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Match.AWAYTEAMID,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Match.AWAYTEAMNAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Match.DATE,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.date)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Match.FTAGQ,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Match.FTHGQ,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Match.FTRQ,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Match.HTAGQ,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Match.HTHGQ,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Match.HTRQ,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Match.HOMETEAMID,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Match.HOMETEAMNAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Match.MATCHDAY,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Match.PARTITIONKEY,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Match.SECONDARYKEY,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Match.SEASON,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'createdAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'updatedAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));
  });
}

class _MatchModelType extends ModelType<Match> {
  const _MatchModelType();

  @override
  Match fromJson(Map<String, dynamic> jsonData) {
    return Match.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'Match';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Match] in your schema.
 */
@immutable
class MatchModelIdentifier implements ModelIdentifier<Match> {
  final String id;

  /** Create an instance of MatchModelIdentifier using [id] the primary key. */
  const MatchModelIdentifier({required this.id});

  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{'id': id});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
      .entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() => 'MatchModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is MatchModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
