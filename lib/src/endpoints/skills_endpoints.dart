import 'package:churchapp_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class SkillsEndpoint extends Endpoint {
  Future<String?> addSkill(Session session, Skill skill) async {
    await Skill.db.insertRow(session, skill);

    return skill.color;
  }

  Future<List<Skill>> getSkills(Session session) async {
    return await Skill.db.find(session);
  }

  Future<bool> deleteSkill(Session session, Skill skill) async {
    await Skill.db.deleteRow(session, skill);
    return true;
  }

  @override
  Future<void> delete(Session session, data) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> findById(Session session, int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> getList(Session session, Map filters) {
    // TODO: implement getList
    throw UnimplementedError();
  }

  @override
  Future<void> insert(Session session, data) async {
    await session.dbNext.insertRow<Skill>(data);
  }

  @override
  Future<void> update(Session session, data) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
