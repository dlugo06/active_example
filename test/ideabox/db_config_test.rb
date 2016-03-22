require './test/test_helper'
require 'lib/ideabox/db_config'
class DBConfigTest < MiniTest::Test
  def test_default_file
    file = './config/database.yml'
    assert_equal file, DBConfig.new('env').file
  end
end
