// import 'dart:core';

// import 'package:dio/dio.dart';
// import 'package:fcode101/models/game.dart';
// import 'package:fcode101/services/dio_provider.dart';
// import 'package:flutter/foundation.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:retrofit/retrofit.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'bggeek_api.freezed.dart';
// part 'bggeek_api.g.dart';

// // Start with the end in mind

// // What do we ultimately want from this API?
// // We want to retrieve a list of games when given a search term.
// // We have the domain object "Game" that we want to return a list of.
// // We want to take a search term as a required String parameter.
// // For Board Game Geek API this is a two-step process:
// // 1. Get the list of IDs for the games that match the search term.
// // I have a "nameSearchIds" endpoint for this in the API (bggApiProvider)
// // 2. Get the details for each game using the IDs from step 1.
// // I have a "nameSearch" endpoint for this in the API (bggApiProvider)
// // I'd like a riverpod provider that will return a Future<List<Game>>.
// // What kind of provider should I use?
// // Maybe @riverpod can figure that out for me?
// // Hint it's a FutureProvider.autodispose.family (but we won't need to know that).
// @riverpod
// Future<List<Game>?> bggGamesByName(
//   BggGamesByNameRef ref, {
//   required String name,
// }) async {
//   final response = await ref.read(bggApiProvider).nameSearchIds(name);
//   final result = await ref.read(bggApiProvider).nameSearch(response.ids!);
//   // and since BGG doesn't CORS-enable their images either we need to add this ...
//   final outSearchGames = List<Game>.empty(growable: true);
//   for (final g in result.games!) {
//     if (g.imageUrl != null && g.imageUrl!.isNotEmpty) {
//       outSearchGames.add(
//         g.copyWith(
//           imageUrl: Uri.encodeFull(
//             'https://us-central1-fb-cors-proxy-5b095.cloudfunctions.net/cors?url=${g.imageUrl!}',
//           ),
//         ),
//       );
//     } else {
//       outSearchGames.add(g);
//     }
//   }
//   return outSearchGames;
// }

// // What am I missing?
// // I have the Game object already
// // I need the BggApi, with the two endpoints
// // I need the BggApi Provider

// // Still working top-down, let's create the BggApi Provider

// // We need a Provider for our BGG API.
// // I'd like to use the Dio library to make HTTP requests.
// // I have a DioProvider that will give me a Dio instance.
// @riverpod
// BGGeekApi bggApi(BggApiRef ref) => BGGeekApi(ref.read(dioProvider));

// // What am I missing?
// // Still need the BggApi

// // I need a BGG API client that will make HTTP requests.
// // I know the baseUri for the API.
// // I know the different endpoints I need to call.
// // I know what they take as parameters.
// // one uses parameters in the path
// // the other uses parameters in the querystring
// // I know what they return.
// // If I create objects that parse the response, maybe I can just generate the API?
// @RestApi(
//   baseUrl: 'https://codercampapi.azure-api.net/bgg/',
//   parser: Parser
//       .FlutterCompute, // This allows Dio to process and parse the response in a background isolate.
// )
// abstract class BGGeekApi {
//   factory BGGeekApi(Dio dio, {String baseUrl}) = _BGGeekApi;

//   @GET('/boardgames/{name}')
//   Future<BGGGameSearchResponse> nameSearch(
//     @Path() String name, {
//     @DioOptions() Options? options,
//   });

//   @GET('/searchids')
//   Future<BGGSearchGameIdsResponse> nameSearchIds(
//     @Query('search') String name, {
//     @DioOptions() Options? options,
//   });
// }

// // What am I missing?
// // I need the BGGGameSearchResponse and BGGSearchGameIdsResponse objects

// // The 'boardgames/{name}' endpoint returns a BGGGameSearchResponse.
// // This is really just a JSON list of Games
// // I'd like to create a class that will parse this response.
// @freezed
// class BGGGameSearchResponse with _$BGGGameSearchResponse {
//   factory BGGGameSearchResponse({
//     List<Game>? games,
//   }) = _BGGGameSearchResponse;
//   factory BGGGameSearchResponse.fromJson(Map<String, dynamic> json) =>
//       _$BGGGameSearchResponseFromJson(json);
// }

// BGGGameSearchResponse deserializeBGGGameSearchResponse(
//   Map<String, dynamic> json,
// ) =>
//     BGGGameSearchResponse.fromJson(json);

// // The 'searchids' endpoint returns a BGGSearchGameIdsResponse.
// // This is really just a single String of Ids (separated by commas)
// // I'd like to create a class that will parse this response.
// @freezed
// class BGGSearchGameIdsResponse with _$BGGSearchGameIdsResponse {
//   factory BGGSearchGameIdsResponse({
//     String? ids,
//   }) = _BGGSearchGameIdsResponse;
//   factory BGGSearchGameIdsResponse.fromJson(Map<String, dynamic> json) =>
//       _$BGGSearchGameIdsResponseFromJson(json);
// }

// BGGSearchGameIdsResponse deserializeBGGSearchGameIdsResponse(
//   Map<String, dynamic> json,
// ) =>
//     BGGSearchGameIdsResponse.fromJson(json);
