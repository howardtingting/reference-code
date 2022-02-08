namespace Facebook\HackTest;

use function Facebook\FBExpect\expect;

final class SomeFailTest extends HackTest {
    <<TestGroup('fails')>>
    public function testFail(): void {
        expect(true)->toBeFalse();
    }

    <<TestGroup('passes')>>
    public function testPass(): void {
        expect(true)->toBeTrue();
    }
}
