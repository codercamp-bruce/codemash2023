// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Game _$$_GameFromJson(Map<String, dynamic> json) => _$_Game(
      id: json['id'] as String?,
      name: json['name'] as String?,
      minPlayers: json['min_players'] as int?,
      maxPlayers: json['max_players'] as int?,
      minPlaytime: json['min_playtime'] as int?,
      maxPlaytime: json['max_playtime'] as int?,
      minAge: json['min_age'] as int?,
      description: json['description'] as String?,
      imageUrl: json['image_url'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_GameToJson(_$_Game instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'min_players': instance.minPlayers,
      'max_players': instance.maxPlayers,
      'min_playtime': instance.minPlaytime,
      'max_playtime': instance.maxPlaytime,
      'min_age': instance.minAge,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'type': instance.type,
    };
