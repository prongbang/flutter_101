class ServerErrorException implements Exception {
  String cause;
  ServerErrorException(this.cause);
}
