require_relative "../lib/play_master"
require_relative "../lib/grid"
require_relative "../lib/color"

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

  it "if all points on board are connected, mark game won" do
    #  a b c d e
    #1
    #2
    #3
    #4
    #5

    done_grid = Grid.new(5, 5)
    done_grid.endpoints = [ Color.new(:red, :a1, :a5),
                            Color.new(:blue, :b1, :b5),
                            Color.new(:green, :c1, :c5),
                            Color.new(:yellow, :d1, :d5),
                            Color.new(:orange, :e1, :e5)]
    done_grid.paths.should == [ [:a1, :a2, :a3, :a4, :a5], 
                        [:b1, :b2, :b3, :b4, :b5], 
                        [:c1, :c2, :c3, :c4, :c5], 
                        [:d1, :d2, :d3, :d4, :d5], 
                        [:e1, :e2, :e3, :e4, :e5] ]
    subject.grid = done_grid
    subject.is_playable?.should be_false
  end
end
