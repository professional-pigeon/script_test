require ('rspec')
require ('whiteboard_logic')

describe("whiteboard") do
  it("just want to see what it outputs") do
    array1 = [3, 1, 1]
    array2 = [6, 4, 5]
    thing = Whiteboard.new(array1, array2)
    expect(thing.array1).to(eq([1, 1, 3]))
    expect(thing.array1).to(eq([6, 5, 4]))
  end
end