import '../../features/create_pdf/presentaion/bloc/pdf_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initServiceLocator() {
  sl.registerLazySingleton(() => PdfBloc());
}
