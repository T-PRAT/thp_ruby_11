require_relative '../lib/count_word'

describe "count_word function" do
	it "count swear words" do
		expect(count_word("../rcs/t8.shakespeare.txt", "../rcs/swearWords.txt")).to eq()
