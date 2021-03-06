/**
 * This file is generated. Do not modify it manually!
 *
 * @generated SignedSource<<f0717ff9a79089f103ff80ab77e864d2>>
 */
namespace Facebook\HHAST;
use namespace Facebook\TypeAssert;
use namespace HH\Lib\Dict;
/* HHAST_IGNORE_ALL[5607] 5607 is ignored because of false positives when comparing a generic to a typed value */
/* HHAST_IGNORE_ALL[5624] HHAST_IGNORE_ALL[5639] 5624 and 5639 are ignored because they insist on using co(tra)variant generics. Could this break external consumers? */

<<__ConsistentConstruct>>
final class XHPChildrenParenthesizedList
  extends Node
  implements ILambdaBody, IExpression {

  const string SYNTAX_KIND = 'xhp_children_parenthesized_list';

  private LeftParenToken $_left_paren;
  private NodeList<ListItem<IExpression>> $_xhp_children;
  private RightParenToken $_right_paren;

  public function __construct(
    LeftParenToken $left_paren,
    NodeList<ListItem<IExpression>> $xhp_children,
    RightParenToken $right_paren,
    ?__Private\SourceRef $source_ref = null,
  ) {
    $this->_left_paren = $left_paren;
    $this->_xhp_children = $xhp_children;
    $this->_right_paren = $right_paren;
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
    $left_paren = Node::fromJSON(
      ($json['xhp_children_list_left_paren']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'LeftParenToken',
    );
    $left_paren = $left_paren as nonnull;
    $offset += $left_paren->getWidth();
    $xhp_children = Node::fromJSON(
      ($json['xhp_children_list_xhp_children']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'NodeList<ListItem<IExpression>>',
    );
    $xhp_children = $xhp_children as nonnull;
    $offset += $xhp_children->getWidth();
    $right_paren = Node::fromJSON(
      ($json['xhp_children_list_right_paren']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'RightParenToken',
    );
    $right_paren = $right_paren as nonnull;
    $offset += $right_paren->getWidth();
    $source_ref = shape(
      'file' => $file,
      'source' => $source,
      'offset' => $initial_offset,
      'width' => $offset - $initial_offset,
    );
    return new static(
      /* HH_IGNORE_ERROR[4110] */ $left_paren,
      /* HH_IGNORE_ERROR[4110] */ $xhp_children,
      /* HH_IGNORE_ERROR[4110] */ $right_paren,
      $source_ref,
    );
  }

  <<__Override>>
  public function getChildren(): dict<string, Node> {
    return dict[
      'left_paren' => $this->_left_paren,
      'xhp_children' => $this->_xhp_children,
      'right_paren' => $this->_right_paren,
    ]
      |> Dict\filter_nulls($$);
  }

  <<__Override>>
  public function rewriteChildren<Tret as ?Node>(
    (function(Node, vec<Node>): Tret) $rewriter,
    vec<Node> $parents = vec[],
  ): this {
    $parents[] = $this;
    $left_paren = $rewriter($this->_left_paren, $parents);
    $xhp_children = $rewriter($this->_xhp_children, $parents);
    $right_paren = $rewriter($this->_right_paren, $parents);
    if (
      $left_paren === $this->_left_paren &&
      $xhp_children === $this->_xhp_children &&
      $right_paren === $this->_right_paren
    ) {
      return $this;
    }
    return new static(
      $left_paren as LeftParenToken,
      /* HH_FIXME[4110] NodeList<ListItem<IExpression>> may not be enforceable */ $xhp_children,
      $right_paren as RightParenToken,
    );
  }

  public function getLeftParenUNTYPED(): ?Node {
    return $this->_left_paren;
  }

  public function withLeftParen(LeftParenToken $value): this {
    if ($value === $this->_left_paren) {
      return $this;
    }
    return new static($value, $this->_xhp_children, $this->_right_paren);
  }

  public function hasLeftParen(): bool {
    return true;
  }

  /**
   * @return LeftParenToken
   */
  public function getLeftParen(): LeftParenToken {
    return TypeAssert\instance_of(LeftParenToken::class, $this->_left_paren);
  }

  /**
   * @return LeftParenToken
   */
  public function getLeftParenx(): LeftParenToken {
    return $this->getLeftParen();
  }

  public function getXhpChildrenUNTYPED(): ?Node {
    return $this->_xhp_children;
  }

  public function withXhpChildren(
    NodeList<ListItem<IExpression>> $value,
  ): this {
    if ($value === $this->_xhp_children) {
      return $this;
    }
    return new static($this->_left_paren, $value, $this->_right_paren);
  }

  public function hasXhpChildren(): bool {
    return true;
  }

  /**
   * @return NodeList<ListItem<IExpression>> | NodeList<ListItem<NameToken>>
   */
  public function getXhpChildren(): NodeList<ListItem<IExpression>> {
    return TypeAssert\instance_of(NodeList::class, $this->_xhp_children);
  }

  /**
   * @return NodeList<ListItem<IExpression>> | NodeList<ListItem<NameToken>>
   */
  public function getXhpChildrenx(): NodeList<ListItem<IExpression>> {
    return $this->getXhpChildren();
  }

  public function getRightParenUNTYPED(): ?Node {
    return $this->_right_paren;
  }

  public function withRightParen(RightParenToken $value): this {
    if ($value === $this->_right_paren) {
      return $this;
    }
    return new static($this->_left_paren, $this->_xhp_children, $value);
  }

  public function hasRightParen(): bool {
    return true;
  }

  /**
   * @return RightParenToken
   */
  public function getRightParen(): RightParenToken {
    return TypeAssert\instance_of(RightParenToken::class, $this->_right_paren);
  }

  /**
   * @return RightParenToken
   */
  public function getRightParenx(): RightParenToken {
    return $this->getRightParen();
  }
}
