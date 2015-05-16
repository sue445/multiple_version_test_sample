require 'spec_helper'

describe MultipleVersionTestSample do
  it 'has a version number' do
    expect(MultipleVersionTestSample::VERSION).not_to be nil
  end

  it "show ruby version" do
    puts "ruby: #{RUBY_VERSION}"
  end

  it "show rails version" do
    puts "rails: #{Rails::VERSION::STRING}"
  end

  describe "turbtable" do
    before do
      skip "rails3系ではturntableは動かないのでテストしない" unless rails4?
    end

    it "show turntable version" do
      puts "turntable: #{ActiveRecord::Turntable::VERSION}"
    end
  end
end
