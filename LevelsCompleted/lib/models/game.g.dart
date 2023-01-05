// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GameAdapter extends TypeAdapter<_$_Game> {
  @override
  final int typeId = 1;

  @override
  _$_Game read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Game(
      id: fields[0] as String?,
      name: fields[1] as String?,
      minPlayers: fields[4] as int?,
      maxPlayers: fields[5] as int?,
      minPlaytime: fields[6] as int?,
      maxPlaytime: fields[7] as int?,
      minAge: fields[8] as int?,
      description: fields[9] as String?,
      imageUrl: fields[10] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Game obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.minPlayers)
      ..writeByte(5)
      ..write(obj.maxPlayers)
      ..writeByte(6)
      ..write(obj.minPlaytime)
      ..writeByte(7)
      ..write(obj.maxPlaytime)
      ..writeByte(8)
      ..write(obj.minAge)
      ..writeByte(9)
      ..write(obj.description)
      ..writeByte(10)
      ..write(obj.imageUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Game _$$_GameFromJson(Map<String, dynamic> json) => _$_Game(
      id: json['id'] as String?,
      name: json['name'] as String?,
      inCollection: json['inCollection'] as bool? ?? false,
      minPlayers: json['min_players'] as int?,
      maxPlayers: json['max_players'] as int?,
      minPlaytime: json['min_playtime'] as int?,
      maxPlaytime: json['max_playtime'] as int?,
      minAge: json['min_age'] as int?,
      description: json['description'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$_GameToJson(_$_Game instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'inCollection': instance.inCollection,
      'min_players': instance.minPlayers,
      'max_players': instance.maxPlayers,
      'min_playtime': instance.minPlaytime,
      'max_playtime': instance.maxPlaytime,
      'min_age': instance.minAge,
      'description': instance.description,
      'image_url': instance.imageUrl,
    };
