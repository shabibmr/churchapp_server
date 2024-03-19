/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

enum BloodGroup with _i1.SerializableEntity {
  A,
  B,
  AB,
  O,
  A_ve,
  B_ve,
  AB_ve,
  O_ve;

  static BloodGroup? fromJson(String name) {
    switch (name) {
      case 'A':
        return A;
      case 'B':
        return B;
      case 'AB':
        return AB;
      case 'O':
        return O;
      case 'A_ve':
        return A_ve;
      case 'B_ve':
        return B_ve;
      case 'AB_ve':
        return AB_ve;
      case 'O_ve':
        return O_ve;
      default:
        return null;
    }
  }

  @override
  String toJson() => name;
  @override
  String toString() => toJson();
}
