require_relative '../../questions/202104/1'

describe Question202104_01 do
  it "パターン1" do
    sut = Question202104_01.new(['山', '野', '野', '山'])
    expect(sut.exec).to eq 250
  end
  it "パターン2" do
    sut = Question202104_01.new(['山', '野', '山', '山', '山', '野', '野', '野', '山' ])
    expect(sut.exec).to eq 300
  end
  it "パターン3" do
    sut = Question202104_01.new(['山', '野', '山', '山', '山', '野', '野', '野', '山', '野' ])
    expect(sut.exec).to eq 300
  end
  it "パターン4" do
    sut = Question202104_01.new(['野', '山'])
    expect(sut.exec).to eq 0
  end
  it "パターン5" do
    sut = Question202104_01.new(['野', '野', '山'])
    expect(sut.exec).to eq 0
  end
  it "パターン6" do
    sut = Question202104_01.new(['山', '山', '山'])
    expect(sut.exec).to eq 0
  end
end