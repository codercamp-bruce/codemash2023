// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bgatlas_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BGAGameSearchResponse _$$_BGAGameSearchResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BGAGameSearchResponse(
      games: (json['games'] as List<dynamic>?)
          ?.map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_BGAGameSearchResponseToJson(
        _$_BGAGameSearchResponse instance) =>
    <String, dynamic>{
      'games': instance.games?.map((e) => e.toJson()).toList(),
      'count': instance.count,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _BGAtlasApi implements BGAtlasApi {
  _BGAtlasApi(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://codercampapi.azure-api.net/bga/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BGAGameSearchResponse> nameSearch(name) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'name': name};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BGAGameSearchResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/search',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BGAGameSearchResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$bgaGamesByNameGenHash() => r'206edfefcb9274799086eee7ef96dcbe61a8bef2';

/// See also [bgaGamesByNameGen].
class BgaGamesByNameGenProvider extends AutoDisposeFutureProvider<List<Game>?> {
  BgaGamesByNameGenProvider({
    required this.name,
  }) : super(
          (ref) => bgaGamesByNameGen(
            ref,
            name: name,
          ),
          from: bgaGamesByNameGenProvider,
          name: r'bgaGamesByNameGenProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bgaGamesByNameGenHash,
        );

  final String name;

  @override
  bool operator ==(Object other) {
    return other is BgaGamesByNameGenProvider && other.name == name;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, name.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef BgaGamesByNameGenRef = AutoDisposeFutureProviderRef<List<Game>?>;

/// See also [bgaGamesByNameGen].
final bgaGamesByNameGenProvider = BgaGamesByNameGenFamily();

class BgaGamesByNameGenFamily extends Family<AsyncValue<List<Game>?>> {
  BgaGamesByNameGenFamily();

  BgaGamesByNameGenProvider call({
    required String name,
  }) {
    return BgaGamesByNameGenProvider(
      name: name,
    );
  }

  @override
  AutoDisposeFutureProvider<List<Game>?> getProviderOverride(
    covariant BgaGamesByNameGenProvider provider,
  ) {
    return call(
      name: provider.name,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'bgaGamesByNameGenProvider';
}

String _$bgaApiHash() => r'fa7da4c6ccf4ec3e146b86e219a77a10c62b9d12';

/// See also [bgaApi].
final bgaApiProvider = AutoDisposeProvider<BGAtlasApi>(
  bgaApi,
  name: r'bgaApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$bgaApiHash,
);
typedef BgaApiRef = AutoDisposeProviderRef<BGAtlasApi>;
