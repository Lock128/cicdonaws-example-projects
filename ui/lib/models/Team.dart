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


/** This is an auto generated class representing the Team type in your schema. */
@immutable
class Team extends Model {
  static const classType = const _TeamModelType();
  final String id;
  final String? _PartitionKey;
  final String? _PrimaryColor;
  final String? _SecondaryKey;
  final String? _SecondaryColor;
  final String? _TeamName;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  TeamModelIdentifier get modelIdentifier {
      return TeamModelIdentifier(
        id: id
      );
  }
  
  String get PartitionKey {
    try {
      return _PartitionKey!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get PrimaryColor {
    try {
      return _PrimaryColor!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get SecondaryKey {
    try {
      return _SecondaryKey!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get SecondaryColor {
    try {
      return _SecondaryColor!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get TeamName {
    try {
      return _TeamName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Team._internal({required this.id, required PartitionKey, required PrimaryColor, required SecondaryKey, required SecondaryColor, required TeamName, createdAt, updatedAt}): _PartitionKey = PartitionKey, _PrimaryColor = PrimaryColor, _SecondaryKey = SecondaryKey, _SecondaryColor = SecondaryColor, _TeamName = TeamName, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Team({String? id, required String PartitionKey, required String PrimaryColor, required String SecondaryKey, required String SecondaryColor, required String TeamName}) {
    return Team._internal(
      id: id == null ? UUID.getUUID() : id,
      PartitionKey: PartitionKey,
      PrimaryColor: PrimaryColor,
      SecondaryKey: SecondaryKey,
      SecondaryColor: SecondaryColor,
      TeamName: TeamName);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Team &&
      id == other.id &&
      _PartitionKey == other._PartitionKey &&
      _PrimaryColor == other._PrimaryColor &&
      _SecondaryKey == other._SecondaryKey &&
      _SecondaryColor == other._SecondaryColor &&
      _TeamName == other._TeamName;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Team {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("PartitionKey=" + "$_PartitionKey" + ", ");
    buffer.write("PrimaryColor=" + "$_PrimaryColor" + ", ");
    buffer.write("SecondaryKey=" + "$_SecondaryKey" + ", ");
    buffer.write("SecondaryColor=" + "$_SecondaryColor" + ", ");
    buffer.write("TeamName=" + "$_TeamName" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Team copyWith({String? PartitionKey, String? PrimaryColor, String? SecondaryKey, String? SecondaryColor, String? TeamName}) {
    return Team._internal(
      id: id,
      PartitionKey: PartitionKey ?? this.PartitionKey,
      PrimaryColor: PrimaryColor ?? this.PrimaryColor,
      SecondaryKey: SecondaryKey ?? this.SecondaryKey,
      SecondaryColor: SecondaryColor ?? this.SecondaryColor,
      TeamName: TeamName ?? this.TeamName);
  }
  
  Team.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _PartitionKey = json['PartitionKey'],
      _PrimaryColor = json['PrimaryColor'],
      _SecondaryKey = json['SecondaryKey'],
      _SecondaryColor = json['SecondaryColor'],
      _TeamName = json['TeamName'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'PartitionKey': _PartitionKey, 'PrimaryColor': _PrimaryColor, 'SecondaryKey': _SecondaryKey, 'SecondaryColor': _SecondaryColor, 'TeamName': _TeamName, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'PartitionKey': _PartitionKey, 'PrimaryColor': _PrimaryColor, 'SecondaryKey': _SecondaryKey, 'SecondaryColor': _SecondaryColor, 'TeamName': _TeamName, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<TeamModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<TeamModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField PARTITIONKEY = QueryField(fieldName: "PartitionKey");
  static final QueryField PRIMARYCOLOR = QueryField(fieldName: "PrimaryColor");
  static final QueryField SECONDARYKEY = QueryField(fieldName: "SecondaryKey");
  static final QueryField SECONDARYCOLOR = QueryField(fieldName: "SecondaryColor");
  static final QueryField TEAMNAME = QueryField(fieldName: "TeamName");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Team";
    modelSchemaDefinition.pluralName = "Teams";
    
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
      key: Team.PARTITIONKEY,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Team.PRIMARYCOLOR,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Team.SECONDARYKEY,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Team.SECONDARYCOLOR,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Team.TEAMNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _TeamModelType extends ModelType<Team> {
  const _TeamModelType();
  
  @override
  Team fromJson(Map<String, dynamic> jsonData) {
    return Team.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Team';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Team] in your schema.
 */
@immutable
class TeamModelIdentifier implements ModelIdentifier<Team> {
  final String id;

  /** Create an instance of TeamModelIdentifier using [id] the primary key. */
  const TeamModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'TeamModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is TeamModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}