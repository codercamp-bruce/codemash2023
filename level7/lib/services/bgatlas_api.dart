import 'dart:core';

import 'package:cm23mp/models/game.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bgatlas_api.freezed.dart';
part 'bgatlas_api.g.dart';

@RestApi(
  baseUrl: 'https://codercampapi.azure-api.net/bga/',
)
abstract class BGAtlasApi {
  factory BGAtlasApi(Dio dio, {String baseUrl}) = _BGAtlasApi;

  @GET('/search')
  Future<BGAGameSearchResponse> nameSearch(
    @Query('name') String name,
  );
}

@freezed
class BGAGameSearchResponse with _$BGAGameSearchResponse {
  factory BGAGameSearchResponse({
    List<Game>? games,
    int? count,
  }) = _BGAGameSearchResponse;
  factory BGAGameSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$BGAGameSearchResponseFromJson(json);
}

@riverpod
Future<List<Game>?> bgaGamesByNameGen(
  BgaGamesByNameGenRef ref, {
  required String name,
}) async {
  final result = await ref.read(bgaApiProvider).nameSearch(name);
  final games = result.games;
  return games;
}

@riverpod
BGAtlasApi bgaApi(BgaApiRef ref) => BGAtlasApi(Dio());
