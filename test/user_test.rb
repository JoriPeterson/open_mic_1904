require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test

  def test_it_exist
    sal = User.new("Sal")
    assert_instance_of User, sal
  end


  def test_user_can_learn_jokes
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal = User.new("Sal")
    assert @joke_1, sal.learn(@joke_1)
    assert @joke_2, sal.learn(@joke_2)
    assert [@joke_1, @joke_2], sal.jokes
  end


end
