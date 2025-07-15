import 'package:shoppi/core/app_flavor/flavor_config.dart';
import 'package:shoppi/main.dart';

void main() async {
  FlavorConfig(
    flavor: Flavor.dev,
    values: FlavorValues(
      apiBaseUrl: "https://www.dev.com/api",
      appIcon: '',
      appName: 'Shopping [Dev]',
    ),
  );
  intializeApp();
}
