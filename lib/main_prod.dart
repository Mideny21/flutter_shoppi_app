import 'package:shoppi/core/app_flavor/flavor_config.dart';
import 'package:shoppi/main.dart';

void main() async {
  FlavorConfig(
    flavor: Flavor.prod,
    values: FlavorValues(
      apiBaseUrl: "https://www.prod.com/api/",
      appIcon: '',
      appName: 'Shopping',
    ),
  );
  intializeApp();
}
