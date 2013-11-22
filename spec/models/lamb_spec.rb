require 'spec_helper'

describe Lamb do

  let(:lamb) { Lamb.create }

  context "when created" do
    it "is silent" do
      expect(lamb.is_silent).to eq(true)
    end
  end

  context "when updated" do
    it "is not silent" do
      lamb.is_silent = false
      expect(lamb.is_silent).to eq(false)
    end
  end

end
