class ClientErrorException implements Exception {
  String cause;
  ClientErrorException(this.cause);
}
