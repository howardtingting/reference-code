/**
 * This file is generated. Do not modify it manually!
 *
 * @generated SignedSource<<7f79c315696ea1693da504b1dfb3c5a6>>
 */
namespace Facebook\HHAST;
use namespace Facebook\TypeAssert;
use namespace HH\Lib\Dict;
/* HHAST_IGNORE_ALL[5607] 5607 is ignored because of false positives when comparing a generic to a typed value */
/* HHAST_IGNORE_ALL[5624] HHAST_IGNORE_ALL[5639] 5624 and 5639 are ignored because they insist on using co(tra)variant generics. Could this break external consumers? */

<<__ConsistentConstruct>>
final class ListExpression extends Node implements ILambdaBody, IExpression {

  const string SYNTAX_KIND = 'list_expression';

  private ListToken $_keyword;
  private LeftParenToken $_left_paren;
  private ?NodeList<ListItem<?IExpression>> $_members;
  private RightParenToken $_right_paren;

  public function __construct(
    ListToken $keyword,
    LeftParenToken $left_paren,
    ?NodeList<ListItem<?IExpression>> $members,
    RightParenToken $right_paren,
    ?__Private\SourceRef $source_ref = null,
  ) {
    $this->_keyword = $keyword;
    $this->_left_paren = $left_paren;
    $this->_members = $members;
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
    $keyword = Node::fromJSON(
      ($json['list_keyword']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'ListToken',
    );
    $keyword = $keyword as nonnull;
    $offset += $keyword->getWidth();
    $left_paren = Node::fromJSON(
      ($json['list_left_paren']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'LeftParenToken',
    );
    $left_paren = $left_paren as nonnull;
    $offset += $left_paren->getWidth();
    $members = Node::fromJSON(
      ($json['list_members'] ?? dict['kind' => 'missing']) as dict<_, _>,
      $file,
      $offset,
      $source,
      'NodeList<ListItem<?IExpression>>',
    );
    $offset += $members?->getWidth() ?? 0;
    $right_paren = Node::fromJSON(
      ($json['list_right_paren']) as dict<_, _>,
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
      /* HH_IGNORE_ERROR[4110] */ $keyword,
      /* HH_IGNORE_ERROR[4110] */ $left_paren,
      /* HH_IGNORE_ERROR[4110] */ $members,
      /* HH_IGNORE_ERROR[4110] */ $right_paren,
      $source_ref,
    );
  }

  <<__Override>>
  public function getChildren(): dict<string, Node> {
    return dict[
      'keyword' => $this->_keyword,
      'left_paren' => $this->_left_paren,
      'members' => $this->_members,
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
    $keyword = $rewriter($this->_keyword, $parents);
    $left_paren = $rewriter($this->_left_paren, $parents);
    $members =
      $this->_members === null ? null : $rewriter($this->_members, $parents);
    $right_paren = $rewriter($this->_right_paren, $parents);
    if (
      $keyword === $this->_keyword &&
      $left_paren === $this->_left_paren &&
      $members === $this->_members &&
      $right_paren === $this->_right_paren
    ) {
      return $this;
    }
    return new static(
      $keyword as ListToken,
      $left_paren as LeftParenToken,
      /* HH_FIXME[4110] ?NodeList<ListItem<?IExpression>> may not be enforceable */ $members,
      $right_paren as RightParenToken,
    );
  }

  public function getKeywordUNTYPED(): ?Node {
    return $this->_keyword;
  }

  public function withKeyword(ListToken $value): this {
    if ($value === $this->_keyword) {
      return $this;
    }
    return new static(
      $value,
      $this->_left_paren,
      $this->_members,
      $this->_right_paren,
    );
  }

  public function hasKeyword(): bool {
    return true;
  }

  /**
   * @return ListToken
   */
  public function getKeyword(): ListToken {
    return TypeAssert\instance_of(ListToken::class, $this->_keyword);
  }

  /**
   * @return ListToken
   */
  public function getKeywordx(): ListToken {
    return $this->getKeyword();
  }

  public function getLeftParenUNTYPED(): ?Node {
    return $this->_left_paren;
  }

  public function withLeftParen(LeftParenToken $value): this {
    if ($value === $this->_left_paren) {
      return $this;
    }
    return
      new static($this->_keyword, $value, $this->_members, $this->_right_paren);
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

  public function getMembersUNTYPED(): ?Node {
    return $this->_members;
  }

  public function withMembers(?NodeList<ListItem<?IExpression>> $value): this {
    if ($value === $this->_members) {
      return $this;
    }
    return new static(
      $this->_keyword,
      $this->_left_paren,
      $value,
      $this->_right_paren,
    );
  }

  public function hasMembers(): bool {
    return $this->_members !== null;
  }

  /**
   * @return NodeList<ListItem<ListExpression>> |
   * NodeList<ListItem<?IExpression>> | NodeList<ListItem<IExpression>> |
   * NodeList<ListItem<MemberSelectionExpression>> |
   * NodeList<ListItem<Missing>> | NodeList<ListItem<?VariableExpression>> |
   * NodeList<ListItem<SubscriptExpression>> |
   * NodeList<ListItem<VariableExpression>> | null
   */
  public function getMembers(): ?NodeList<ListItem<?IExpression>> {
    return $this->_members;
  }

  /**
   * @return NodeList<ListItem<ListExpression>> |
   * NodeList<ListItem<?IExpression>> | NodeList<ListItem<IExpression>> |
   * NodeList<ListItem<MemberSelectionExpression>> |
   * NodeList<ListItem<Missing>> | NodeList<ListItem<?VariableExpression>> |
   * NodeList<ListItem<SubscriptExpression>> |
   * NodeList<ListItem<VariableExpression>>
   */
  public function getMembersx(): NodeList<ListItem<?IExpression>> {
    return TypeAssert\not_null($this->getMembers());
  }

  public function getRightParenUNTYPED(): ?Node {
    return $this->_right_paren;
  }

  public function withRightParen(RightParenToken $value): this {
    if ($value === $this->_right_paren) {
      return $this;
    }
    return
      new static($this->_keyword, $this->_left_paren, $this->_members, $value);
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
