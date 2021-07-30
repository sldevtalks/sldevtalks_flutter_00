// ignore_for_file: constant_identifier_names
class Config {
  static const String BACKEND_URL = String.fromEnvironment('BACKEND_URL',
      defaultValue: 'https://api.spacexdata.com/v4/');
}
