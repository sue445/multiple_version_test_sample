require 'spec_helper'

describe MultipleVersionTestSample do
  it 'has a version number' do
    expect(MultipleVersionTestSample::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
