class NoDataException implements Exception {
  String cause;

  NoDataException(this.cause);
}