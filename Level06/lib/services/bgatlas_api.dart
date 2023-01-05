// import 'dart:core';

// import 'package:dio/dio.dart';
// import 'package:fcode101/models/game.dart';
// import 'package:fcode101/services/dio_provider.dart';
// import 'package:flutter/foundation.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:retrofit/retrofit.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'bgatlas_api.freezed.dart';
// part 'bgatlas_api.g.dart';

// @riverpod
// Future<List<Game>?> bgaGamesByNameGen(
//   BgaGamesByNameGenRef ref, {
//   required String name,
// }) async {
//   final result = await ref
//       .read(bgaApiProvider)
//       .nameSearch(name, limit: 100, fuzzyMatch: true);
//   final games = result.games;
//   return games;
// }

// @riverpod
// BGAtlasApi bgaApi(BgaApiRef ref) => BGAtlasApi(ref.read(dioProvider));

// @RestApi(
//   baseUrl: 'https://codercampapi.azure-api.net/bga/',
//   parser: Parser.FlutterCompute,
// )
// abstract class BGAtlasApi {
//   factory BGAtlasApi(Dio dio, {String baseUrl}) = _BGAtlasApi;

//   @GET('/search')
//   Future<BGAGameSearchResponse> nameSearch(
//     @Query('name') String name, {
//     @Query('limit') int? limit,
//     @Query('fields') String? fields,
//     @Query('skip') int? skip,
//     @Query('fuzzy_match') bool? fuzzyMatch,
//     @DioOptions() Options? options,
//   });
// }

// @freezed
// class BGAGameSearchResponse with _$BGAGameSearchResponse {
//   factory BGAGameSearchResponse({
//     List<Game>? games,
//     int? count,
//   }) = _BGAGameSearchResponse;
//   factory BGAGameSearchResponse.fromJson(Map<String, dynamic> json) =>
//       _$BGAGameSearchResponseFromJson(json);
// }

// BGAGameSearchResponse deserializeBGAGameSearchResponse(
//   Map<String, dynamic> json,
// ) =>
//     BGAGameSearchResponse.fromJson(json);
