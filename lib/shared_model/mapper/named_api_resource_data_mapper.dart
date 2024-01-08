import 'package:poke_perfect/shared_model/model/named_api_resource_data.dart';

extension NamedApiResourceDataExtension on NamedApiResourceData {
  String toDomain() {
    return name;
  }
}
