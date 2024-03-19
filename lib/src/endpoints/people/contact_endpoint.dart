import 'package:serverpod/serverpod.dart';

import '../../generated/protocol.dart';

class ContactEndPoint extends Endpoint {
  Future<void> delete(Session session, data) async {
    // await Contact.db.deleteRow(session, data);
    await session.dbNext.deleteRow<Contact>(data);
  }

  Future<void> findById(Session session, int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  Future<void> getList(Session session, Map filters) {
    // TODO: implement getList
    throw UnimplementedError();
  }

  Future<void> insert(Session session, data) async {
    // TODO: implement insert
    // throw UnimplementedError();
    await session.dbNext.insertRow<Skill>(data);
  }

  Future<void> update(Session session, data) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
