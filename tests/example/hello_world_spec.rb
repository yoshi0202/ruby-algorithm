require_relative '../../questions/example/hello_world'

describe HelloWorld do
  it "return Hello,World" do
    expect(HelloWorld.hello).to eq 'Hello, World!'
    # Failue example
    # expect(HelloWorld.hello).to eq 'Hello, Word!'
  end
end