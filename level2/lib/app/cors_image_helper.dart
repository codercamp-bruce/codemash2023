String getCORSProxyImageUri(String path) {
  return Uri.encodeFull(
    'https://us-central1-fb-cors-proxy-5b095.cloudfunctions.net/cors?url=$path',
  );
}
