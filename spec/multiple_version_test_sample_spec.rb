require 'spec_helper'

describe MultipleVersionTestSample do
  it 'has a version number' do
    expect(MultipleVersionTestSample::VERSION).not_to be nil
  end

  it "show ruby version" do
    puts "ruby: #{RUBY_VERSION}"
  end
end
