require_relative "../lib/play_master"
require_relative "../lib/grid"

describe PlayMaster do

  subject { PlayMaster.new(Grid.new(5, 5))}

  it "should be playable" do
    subject.grid.is_playable?.should be_true
  end
  it "should have colors * 2 occupied squares before play begins - for endpoints" do
   	subject.grid.occupied_squares.should == 10
  end

  it "game cannot be created with all squares full" do
      PlayMaster.new(Grid.new(2, 2)).grid.is_playable?.should be_false
  end
end
