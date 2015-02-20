library source_gen.build_file;

import 'package:source_gen/generators/json_literal_generator.dart' as literal;
import 'package:source_gen/generators/json_serializable_generator.dart' as json;
import 'package:source_gen/source_gen.dart';

void main(List<String> args) {
  build(args, const [
    const json.JsonSerializableGenerator(),
    const literal.JsonLiteralGenerator()
  ]).then((msg) {
    print(msg);
  });
  
//  generate("/home/luiz/dev/git/source_gen_mustache", const [
//    const json.JsonSerializableGenerator(),
//    const literal.JsonLiteralGenerator()
//  ]);
}