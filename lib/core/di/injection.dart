import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
// for async
// void configureDependencies(String env) => getIt.init(environment: env);
Future<void> configureDependencies(String env) async {
  await getIt.init(environment: env);
}
