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
  Future<BGAGameSearchResponse> nameSearch(
    name, {
    limit,
    fields,
    skip,
    fuzzyMatch,
    options,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'name': name,
      r'limit': limit,
      r'fields': fields,
      r'skip': skip,
      r'fuzzy_match': fuzzyMatch,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final newOptions = newRequestOptions(options);
    newOptions.extra.addAll(_extra);
    newOptions.headers.addAll(_dio.options.headers);
    newOptions.headers.addAll(_headers);
    final _result = await _dio.fetch<Map<String, dynamic>>(newOptions.copyWith(
      method: 'GET',
      baseUrl: baseUrl ?? _dio.options.baseUrl,
      queryParameters: queryParameters,
      path: '/search',
    )..data = _data);
    final value =
        await compute(deserializeBGAGameSearchResponse, _result.data!);
    return value;
  }

  RequestOptions newRequestOptions(Object? options) {
    if (options is RequestOptions) {
      return options as RequestOptions;
    }
    if (options is Options) {
      return RequestOptions(
        method: options.method,
        sendTimeout: options.sendTimeout,
        receiveTimeout: options.receiveTimeout,
        extra: options.extra,
        headers: options.headers,
        responseType: options.responseType,
        contentType: options.contentType.toString(),
        validateStatus: options.validateStatus,
        receiveDataWhenStatusError: options.receiveDataWhenStatusError,
        followRedirects: options.followRedirects,
        maxRedirects: options.maxRedirects,
        requestEncoder: options.requestEncoder,
        responseDecoder: options.responseDecoder,
        path: '',
      );
    }
    return RequestOptions(path: '');
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

String _$bgaGamesByNameGenHash() => r'dee189b2c61951b84ed3e46cace7ccfc90f6c842';

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

String _$bgaApiHash() => r'cef972bcc141bf85c1d36c67fb4d27ed79e18dfc';

/// See also [bgaApi].
final bgaApiProvider = AutoDisposeProvider<BGAtlasApi>(
  bgaApi,
  name: r'bgaApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$bgaApiHash,
);
typedef BgaApiRef = AutoDisposeProviderRef<BGAtlasApi>;
