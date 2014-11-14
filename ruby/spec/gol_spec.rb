require 'rspec'
require_relative './../src/gol'

describe 'Game of Life' do
    describe '#evolve' do
        it 'should return nil' do
            expect(evolve).to eq(nil)
        end
    end
end
