import '../../../../core/data/either.dart';
import '../../../../core/data/network_info.dart';
import '../../../../core/error/exeptions.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/remote_word.dart';
import '../../domain/repository/search_repo.dart';
import '../data_source/remote_data_source.dart';
import '../models/search_converter.dart';

class SearchRepositoryImpl implements SearchRepository {
  final NetworkInfo _networkInfo = const NetworkInfoImpl();
  final SearchRemoteDataSource _remoteDataSource = SearchRemoteDataSourceImpl();
  @override
  Future<Either<Failure, RemoteWordEntity>> getDefinition(String query) async {
    if (await _networkInfo.connected) {
      try {
        final result = await _remoteDataSource.getDefinition(query);
        return Right(SearchConverter.wordModelToEntity(result));
      } on ServerException catch (e) {
        return Left(ServerFailure(errorMessage: e.statusMessage));
      } catch (e) {
        return Left(const ServerFailure(errorMessage: 'Nothing found'));
      }
    } else {
      return Left(const ServerFailure(errorMessage: 'No Internet'));
    }
  }
}
