require './config/environment'
class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :description
    end
  end
end

begin
  CreateIdeas.new.change
rescue
end

class Idea < ActiveRecord::Base
end

class IdeaTest < MiniTest::Unit::TestCase
  def test_it_exists
    idea = Idea.new(:description => 'A wonderful idea!')
    assert_equal 'A wonderful idea!', idea.description
  end
end
