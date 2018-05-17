require 'rails_helper'

RSpec.describe Comment do
  describe 'validations' do
    it {should belong_to(:article)}
  end
end
