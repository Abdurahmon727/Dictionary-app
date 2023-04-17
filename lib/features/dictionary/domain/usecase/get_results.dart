import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/repository/search_repo_impl.dart';
import '../entities/word.dart';
import '../repository/search_repo.dart';

class GetDefinitionUseCase implements UseCase<WordEntity, String> {
  final SearchRepository _repository = SearchRepositoryImpl();
  @override
  Future<Either<Failure, WordEntity>> call(String params) {
    return _repository.getDefinition(params);
  }
}
