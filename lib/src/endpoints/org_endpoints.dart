// import 'package:churchapp_server/src/generated/protocol.dart';
// import 'package:serverpod/serverpod.dart';

// class OrganizationEndPoint extends Endpoint {
//   Future<Organization?> getOrgDetails(session) async {
//     Organization? org = await Organization.db.findFirstRow(session);
//     if (org == null) {
//       await Organization.db.insertRow(
//         session,
//         Organization(
//             companyName: "My Organization",
//             companyAddress: "Address",
//             taxRegistrationNo: "Reg123456"),
//       );
//       org = await Organization.db.findFirstRow(session);
//     }
//     print('Returning ORG');
//     return org;
//   }
// }
