require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'

class OpenMicTest < Minitest::Test

  # def setup
  #   sal = User.new("Sal")
  #   ali = User.new("Ali")
  #   joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
  #   joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  #   open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
  # end

  def test_it_exist
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    assert_instance_of OpenMic, open_mic
  end

  def test_welcome_method_adds_to_performers_array
    sal = User.new("Sal")
    ali = User.new("Ali")
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    open_mic.welcome(sal)
    open_mic.welcome(ali)
    assert [sal, ali], open_mic.performers
  end

  # def test_if_jokes_are_repeating
  #   joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
  #   joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  #   sal = User.new("Sal")
  #   ali = User.new("Ali")
  #   open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
  #   ali.learn(joke_1)
  #   ali.learn(joke_2)
  #   refute open_mic.repeated_jokes?
  #   ali.tell(sal, joke_1)
  #   assert open_mic.repeated_jokes?
  # end
end
