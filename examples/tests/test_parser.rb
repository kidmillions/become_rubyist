require "example_program/parser.rb"
require "test/unit"


class TestParser < Test::Unit::TestCase

  def test_peek()
    assert_equal(peek([["verb", "Cries"]]), "verb")

    word_list = [["noun", "player"], ['verb', 'go'], ['direction', 'south']]

    assert_equal(peek(word_list), 'noun')

  end

  def test_match()
    word_list = [["noun", "player"], ['verb', 'go'], ['direction', 'south']]

    assert_equal(match(word_list, 'noun'), ['noun', 'player'])
    assert_equal(word_list.length, 2)
    assert_equal(match(word_list, 'noun'), nil)

  end

  def test_parsing_things()
    word_list = [["noun", "player"], ['verb', 'go'], ['direction', 'south']]


    assert_equal(parse_verb([['stop', 'the'], ['verb', 'run']]), ['verb', 'run'])
    assert_equal(parse_object([['stop', 'the'], ['noun', 'honey']]), ['noun', 'honey'])

    assert_equal(parse_subject([['stop', 'the'], ['noun', 'bear']]), ['noun', 'bear'])
    assert_equal(parse_subject([['stop', 'the'], ['verb', 'run']]), ['noun', 'player'])


    assert_raise ParserError do
      parse_verb([['direction', 'south']])
    end

    assert_raise ParserError do
      parse_subject([['whatever', 'dwdqwd']])
    end

    assert_raise ParserError do
      parse_object([['verb', 'eat']])
    end

  end


  def test_parse_sentence()
    sentence = parse_sentence([['stop', 'the'], ["noun", "bear"], ['verb', 'go'], ['direction', 'south']])
    assert_equal(sentence.subject, 'bear')
    assert_equal(sentence.verb, 'go')
    assert_equal(sentence.object, 'south')
  end

end
