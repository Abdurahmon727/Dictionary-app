import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';
import '../entities/word.dart';

abstract class SearchRepository {
  Future<Either<Failure, WordEntity>> getDefinition(String query);
}
