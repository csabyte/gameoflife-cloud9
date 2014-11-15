import spock.lang.*

class GolTest extends Specification {
    Gol gol

    def setup() {
        gol = new Gol();
    }

    def 'answer should be 42'() {
        expect:
        gol.answer() == 42
    }
}