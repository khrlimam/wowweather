import 'package:core/di.dart';
import 'package:injectable/injectable.dart';
import 'package:wow_weather/di.config.dart';


@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureAppDependencies() async => getIt.$initGetIt();
