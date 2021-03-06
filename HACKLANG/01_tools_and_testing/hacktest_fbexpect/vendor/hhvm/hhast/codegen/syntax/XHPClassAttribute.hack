/**
 * This file is generated. Do not modify it manually!
 *
 * @generated SignedSource<<e639a795c5bd7f76912af4cc77957967>>
 */
namespace Facebook\HHAST;
use namespace Facebook\TypeAssert;
use namespace HH\Lib\Dict;
/* HHAST_IGNORE_ALL[5607] 5607 is ignored because of false positives when comparing a generic to a typed value */
/* HHAST_IGNORE_ALL[5624] HHAST_IGNORE_ALL[5639] 5624 and 5639 are ignored because they insist on using co(tra)variant generics. Could this break external consumers? */

<<__ConsistentConstruct>>
final class XHPClassAttribute extends Node implements IXHPAttribute {

  const string SYNTAX_KIND = 'xhp_class_attribute';

  private ITypeSpecifier $_type;
  private XHPElementNameToken $_name;
  private ?SimpleInitializer $_initializer;
  private ?Node $_required;

  public function __construct(
    ITypeSpecifier $type,
    XHPElementNameToken $name,
    ?SimpleInitializer $initializer,
    ?Node $required,
    ?__Private\SourceRef $source_ref = null,
  ) {
    $this->_type = $type;
    $this->_name = $name;
    $this->_initializer = $initializer;
    $this->_required = $required;
    parent::__construct($source_ref);
  }

  <<__Override>>
  public static function fromJSON(
    dict<arraykey, mixed> $json,
    string $file,
    int $initial_offset,
    string $source,
    string $_type_hint,
  ): this {
    $offset = $initial_offset;
    $type = Node::fromJSON(
      ($json['xhp_attribute_decl_type']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'ITypeSpecifier',
    );
    $type = $type as nonnull;
    $offset += $type->getWidth();
    $name = Node::fromJSON(
      ($json['xhp_attribute_decl_name']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'XHPElementNameToken',
    );
    $name = $name as nonnull;
    $offset += $name->getWidth();
    $initializer = Node::fromJSON(
      ($json['xhp_attribute_decl_initializer'] ?? dict['kind' => 'missing'])
        as dict<_, _>,
      $file,
      $offset,
      $source,
      'SimpleInitializer',
    );
    $offset += $initializer?->getWidth() ?? 0;
    $required = Node::fromJSON(
      ($json['xhp_attribute_decl_required'] ?? dict['kind' => 'missing'])
        as dict<_, _>,
      $file,
      $offset,
      $source,
      'Node',
    );
    $offset += $required?->getWidth() ?? 0;
    $source_ref = shape(
      'file' => $file,
      'source' => $source,
      'offset' => $initial_offset,
      'width' => $offset - $initial_offset,
    );
    return new static(
      /* HH_IGNORE_ERROR[4110] */ $type,
      /* HH_IGNORE_ERROR[4110] */ $name,
      /* HH_IGNORE_ERROR[4110] */ $initializer,
      /* HH_IGNORE_ERROR[4110] */ $required,
      $source_ref,
    );
  }

  <<__Override>>
  public function getChildren(): dict<string, Node> {
    return dict[
      'type' => $this->_type,
      'name' => $this->_name,
      'initializer' => $this->_initializer,
      'required' => $this->_required,
    ]
      |> Dict\filter_nulls($$);
  }

  <<__Override>>
  public function rewriteChildren<Tret as ?Node>(
    (function(Node, vec<Node>): Tret) $rewriter,
    vec<Node> $parents = vec[],
  ): this {
    $parents[] = $this;
    $type = $rewriter($this->_type, $parents);
    $name = $rewriter($this->_name, $parents);
    $initializer = $this->_initializer === null
      ? null
      : $rewriter($this->_initializer, $parents);
    $required =
      $this->_required === null ? null : $rewriter($this->_required, $parents);
    if (
      $type === $this->_type &&
      $name === $this->_name &&
      $initializer === $this->_initializer &&
      $required === $this->_required
    ) {
      return $this;
    }
    return new static(
      $type as ITypeSpecifier,
      $name as XHPElementNameToken,
      $initializer as ?SimpleInitializer,
      $required as ?Node,
    );
  }

  public function getTypeUNTYPED(): ?Node {
    return $this->_type;
  }

  public function withType(ITypeSpecifier $value): this {
    if ($value === $this->_type) {
      return $this;
    }
    return
      new static($value, $this->_name, $this->_initializer, $this->_required);
  }

  public function hasType(): bool {
    return true;
  }

  /**
   * @return DarrayTypeSpecifier | GenericTypeSpecifier | NullableTypeSpecifier
   * | SimpleTypeSpecifier | VarrayTypeSpecifier | XHPEnumType
   */
  public function getType(): ITypeSpecifier {
    return TypeAssert\instance_of(ITypeSpecifier::class, $this->_type);
  }

  /**
   * @return DarrayTypeSpecifier | GenericTypeSpecifier | NullableTypeSpecifier
   * | SimpleTypeSpecifier | VarrayTypeSpecifier | XHPEnumType
   */
  public function getTypex(): ITypeSpecifier {
    return $this->getType();
  }

  public function getNameUNTYPED(): ?Node {
    return $this->_name;
  }

  public function withName(XHPElementNameToken $value): this {
    if ($value === $this->_name) {
      return $this;
    }
    return
      new static($this->_type, $value, $this->_initializer, $this->_required);
  }

  public function hasName(): bool {
    return true;
  }

  /**
   * @return XHPElementNameToken
   */
  public function getName(): XHPElementNameToken {
    return TypeAssert\instance_of(XHPElementNameToken::class, $this->_name);
  }

  /**
   * @return XHPElementNameToken
   */
  public function getNamex(): XHPElementNameToken {
    return $this->getName();
  }

  public function getInitializerUNTYPED(): ?Node {
    return $this->_initializer;
  }

  public function withInitializer(?SimpleInitializer $value): this {
    if ($value === $this->_initializer) {
      return $this;
    }
    return new static($this->_type, $this->_name, $value, $this->_required);
  }

  public function hasInitializer(): bool {
    return $this->_initializer !== null;
  }

  /**
   * @return null | SimpleInitializer
   */
  public function getInitializer(): ?SimpleInitializer {
    return $this->_initializer;
  }

  /**
   * @return SimpleInitializer
   */
  public function getInitializerx(): SimpleInitializer {
    return TypeAssert\not_null($this->getInitializer());
  }

  public function getRequiredUNTYPED(): ?Node {
    return $this->_required;
  }

  public function withRequired(?Node $value): this {
    if ($value === $this->_required) {
      return $this;
    }
    return new static($this->_type, $this->_name, $this->_initializer, $value);
  }

  public function hasRequired(): bool {
    return $this->_required !== null;
  }

  /**
   * @return null | XHPLateinit | XHPRequired
   */
  public function getRequired(): ?Node {
    return $this->_required;
  }

  /**
   * @return XHPLateinit | XHPRequired
   */
  public function getRequiredx(): Node {
    return TypeAssert\not_null($this->getRequired());
  }
}
