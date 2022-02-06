/*
 *  Copyright (c) 2017-present, Facebook, Inc.
 *  All rights reserved.
 *
 *  This source code is licensed under the MIT license found in the
 *  LICENSE file in the root directory of this source tree.
 *
 */

namespace Facebook\HHAST;

use namespace HH\Lib\C;
use namespace Facebook\HHAST\__Private\Resolution;

function resolve_type(
  string $type,
  Script $root,
  Node $node,
): shape('kind' => ResolvedTypeKind, 'name' => string, 'use_clause' => ?NamespaceUseClause) {
  if ($type === 'callable') {
    // Super special case. It's not a legal type anymore but still supported by
    // runtime.
    return shape(
      'kind' => ResolvedTypeKind::CALLABLE,
      'name' => 'callable',
      'use_clause' => null,
    );
  }

  // From hhvm/hphp/hack/src/parser/namespaces.ml
  $autoimports = keyset[
    'AsyncFunctionWaitHandle',
    'AsyncGenerator',
    'AsyncGeneratorWaitHandle',
    'AsyncIterator',
    'AsyncKeyedIterator',
    'Awaitable',
    'AwaitAllWaitHandle',
    'Collection',
    'ConditionWaitHandle',
    'Container',
    'ExternalThreadEventWaitHandle',
    'IMemoizeParam',
    'ImmMap',
    'ImmSet',
    'ImmVector',
    'InvariantException',
    'Iterable',
    'Iterator',
    'KeyedContainer',
    'KeyedIterable',
    'KeyedIterator',
    'KeyedTraversable',
    'Map',
    'ObjprofObjectStats',
    'ObjprofPathsStats',
    'ObjprofStringStats',
    'Pair',
    'RescheduleWaitHandle',
    'ResumableWaitHandle',
    'Set',
    'Shapes',
    'SleepWaitHandle',
    'StaticWaitHandle',
    'Traversable',
    'TypeStructure',
    'TypeStructureKind',
    'Vector',
    'WaitableWaitHandle',
    'XenonSample',
  ];

  if (C\contains_key($autoimports, $type)) {
    return shape(
      'kind' => ResolvedTypeKind::QUALIFIED_AUTOIMPORTED_TYPE,
      'name' => 'HH\\'.$type,
      'use_clause' => null,
    );
  }

  if (C\contains_key(Resolution\get_current_generics($root, $node), $type)) {
    // Generic type names don't belong to a namespace, nothing to resolve.
    return shape(
      'kind' => ResolvedTypeKind::GENERIC_PARAMETER,
      'name' => $type,
      'use_clause' => null,
    );
  }

  $uses = Resolution\get_current_uses($root, $node);

  if (C\contains_key($uses['types'], $type)) {
    $used = $uses['types'][$type];
    return shape(
      'kind' => ResolvedTypeKind::QUALIFIED_TYPE,
      'name' => $used['name'],
      'use_clause' => $used['use_clause'],
    );
  }

  $resolved = Resolution\resolve_name($type, $root, $node, $uses['namespaces']);
  return shape(
    'kind' => ResolvedTypeKind::QUALIFIED_TYPE,
    'name' => $resolved['name'],
    'use_clause' => $resolved['use_clause'],
  );
}
