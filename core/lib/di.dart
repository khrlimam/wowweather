import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetItCore', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureCoreDependencies() async => getIt.$initGetItCore();
