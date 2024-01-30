import 'package:core/di.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureAppDependencies() => getIt.$initGetIt();
