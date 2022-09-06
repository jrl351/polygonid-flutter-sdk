// Mocks generated by Mockito 5.3.0 from annotations
// in polygonid_flutter_sdk/test/data/mappers/filters_mapper_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:mockito/mockito.dart' as _i1;
import 'package:polygonid_flutter_sdk/common/domain/entities/filter_entity.dart'
    as _i4;
import 'package:polygonid_flutter_sdk/credential/data/mappers/filter_mapper.dart'
    as _i3;
import 'package:sembast/sembast.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeFilter_0 extends _i1.SmartFake implements _i2.Filter {
  _FakeFilter_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [FilterMapper].
///
/// See the documentation for Mockito's code generation for more information.
class MockFilterMapper extends _i1.Mock implements _i3.FilterMapper {
  MockFilterMapper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Filter mapTo(_i4.FilterEntity? to) =>
      (super.noSuchMethod(Invocation.method(#mapTo, [to]),
              returnValue: _FakeFilter_0(this, Invocation.method(#mapTo, [to])))
          as _i2.Filter);
}
