require "minitest"
require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/translator.rb"


class TranslatorTest < Minitest::Test

  def test_make_sure_it_exist
    translator = Translator.new
    # translator.eng_to_morse("hello world")
    # => "......-...-..--- .-----.-..-..-.."
    assert_instance_of Translator, translator
  end

  def test_it_translates_english_to_morse
    translator = Translator.new

    expected = "......-...-..--- .-----.-..-..-.."
    actual = translator.eng_to_morse("hello world")

    assert_equal expected, actual
  end

  def test_it_translates_uppercase_and_numbers
    translator = Translator.new
    expected = "......-...-..--- .-----.-..-..-.."
    actual = translator.eng_to_morse("Hello World")

    assert_equal expected, actual

    expected = "-......-.. .-.-.. ...-- ..........--...."
    actual = translator.eng_to_morse("There are 3 ships")

    assert_equal expected, actual
  end










end
