/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/people/contact_endpoint.dart' as _i3;
import '../endpoints/skills_endpoints.dart' as _i4;
import 'package:churchapp_server/src/generated/primitve/skills_list.dart'
    as _i5;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'contactEndPoint': _i3.ContactEndPoint()
        ..initialize(
          server,
          'contactEndPoint',
          null,
        ),
      'skills': _i4.SkillsEndpoint()
        ..initialize(
          server,
          'skills',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['contactEndPoint'] = _i1.EndpointConnector(
      name: 'contactEndPoint',
      endpoint: endpoints['contactEndPoint']!,
      methodConnectors: {
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'data': _i1.ParameterDescription(
              name: 'data',
              type: _i1.getType<dynamic>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['contactEndPoint'] as _i3.ContactEndPoint).delete(
            session,
            params['data'],
          ),
        ),
        'findById': _i1.MethodConnector(
          name: 'findById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['contactEndPoint'] as _i3.ContactEndPoint).findById(
            session,
            params['id'],
          ),
        ),
        'getList': _i1.MethodConnector(
          name: 'getList',
          params: {
            'filters': _i1.ParameterDescription(
              name: 'filters',
              type: _i1.getType<Map<dynamic, dynamic>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['contactEndPoint'] as _i3.ContactEndPoint).getList(
            session,
            params['filters'],
          ),
        ),
        'insert': _i1.MethodConnector(
          name: 'insert',
          params: {
            'data': _i1.ParameterDescription(
              name: 'data',
              type: _i1.getType<dynamic>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['contactEndPoint'] as _i3.ContactEndPoint).insert(
            session,
            params['data'],
          ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'data': _i1.ParameterDescription(
              name: 'data',
              type: _i1.getType<dynamic>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['contactEndPoint'] as _i3.ContactEndPoint).update(
            session,
            params['data'],
          ),
        ),
      },
    );
    connectors['skills'] = _i1.EndpointConnector(
      name: 'skills',
      endpoint: endpoints['skills']!,
      methodConnectors: {
        'addSkill': _i1.MethodConnector(
          name: 'addSkill',
          params: {
            'skill': _i1.ParameterDescription(
              name: 'skill',
              type: _i1.getType<_i5.Skill>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['skills'] as _i4.SkillsEndpoint).addSkill(
            session,
            params['skill'],
          ),
        ),
        'getSkills': _i1.MethodConnector(
          name: 'getSkills',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['skills'] as _i4.SkillsEndpoint).getSkills(session),
        ),
        'deleteSkill': _i1.MethodConnector(
          name: 'deleteSkill',
          params: {
            'skill': _i1.ParameterDescription(
              name: 'skill',
              type: _i1.getType<_i5.Skill>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['skills'] as _i4.SkillsEndpoint).deleteSkill(
            session,
            params['skill'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'data': _i1.ParameterDescription(
              name: 'data',
              type: _i1.getType<dynamic>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['skills'] as _i4.SkillsEndpoint).delete(
            session,
            params['data'],
          ),
        ),
        'findById': _i1.MethodConnector(
          name: 'findById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['skills'] as _i4.SkillsEndpoint).findById(
            session,
            params['id'],
          ),
        ),
        'getList': _i1.MethodConnector(
          name: 'getList',
          params: {
            'filters': _i1.ParameterDescription(
              name: 'filters',
              type: _i1.getType<Map<dynamic, dynamic>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['skills'] as _i4.SkillsEndpoint).getList(
            session,
            params['filters'],
          ),
        ),
        'insert': _i1.MethodConnector(
          name: 'insert',
          params: {
            'data': _i1.ParameterDescription(
              name: 'data',
              type: _i1.getType<dynamic>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['skills'] as _i4.SkillsEndpoint).insert(
            session,
            params['data'],
          ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'data': _i1.ParameterDescription(
              name: 'data',
              type: _i1.getType<dynamic>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['skills'] as _i4.SkillsEndpoint).update(
            session,
            params['data'],
          ),
        ),
      },
    );
  }
}
