require 'spec_helper'

describe Lamb do

  let(:lamb) { Lamb.create }

  context "when created" do

    it "is silent" do
      expect(lamb.is_silent).to eq(true)
    end

  end

end
