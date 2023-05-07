import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';
import '../entities/remote_word.dart';

abstract class SearchRepository {
  Future<Either<Failure, RemoteWordEntity>> getDefinition(String query);
}
