abstract class UseCase<P, R> {
  Future<R> execute(P request);
}
