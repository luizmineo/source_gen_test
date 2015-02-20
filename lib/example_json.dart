library example_json;

import 'package:source_gen/generators/json_serializable.dart';

part 'example_json.g.dart';

@JsonSerializable()
class Person extends Object with _$PersonSerializerMixin {
  
  final String firstName, middleName, lastName;
  final DateTime dateOfBirth;

  Person(this.firstName, this.lastName, {this.middleName, this.dateOfBirth});
  
  factory Person.fromJson(json) => _$PersonFromJson(json);
  
}

