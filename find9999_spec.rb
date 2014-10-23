require "./find9999"
describe Array, "find 9999" do
  before :all do
    @find9999 = Find9999.new
  end

  it "is short of first 1" do
    find9999_array = []
    for i in 2..10000 do
      find9999_array.push(i)
    end
    expect(@find9999.execute(find9999_array)).to eq([1])
  end

  it "is short of last 10000" do
    find9999_array = []
    for i in 1..9999 do
      find9999_array.push(i)
    end
    expect(@find9999.execute(find9999_array)).to eq([10000])
  end

  it "is short of middle 5000" do
    find9999_array = []
    for i in 1..4999 do
      find9999_array.push(i)
    end
    for i in 5001..10000 do
      find9999_array.push(i)
    end
    expect(@find9999.execute(find9999_array)).to eq([5000])
  end

  it "is short of random" do
    find9999_array = []
    find9999_hash = Hash.new
    random = Random.new
    i = 1
    while i < 10000
      r = random.rand(10000) + 1
      if(!find9999_hash.has_key?(r)) then
        find9999_array.push(r)
        find9999_hash.store(r,1)
        i += 1
      end
    end
    answer_array = @find9999.execute(find9999_array)
    expect(answer_array.size).to equal(1)
    expect(find9999_hash).not_to have_key(answer_array.shift)
  end

  after :all do
    @find9999 = nil
  end
end
