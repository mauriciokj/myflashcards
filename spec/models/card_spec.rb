require 'rails_helper'

RSpec.describe Card, type: :model do
  context 'valid_answer' do

    let(:card) { build(:card, answer: answer, case_sensitive: case_sensitive) }

    describe 'when is valid' do
      let(:answer) { 'resposta certa'}
      let(:case_sensitive) { true }
      it "returs true if is a valid answer" do
        expect(card.valid_answer('resposta certa')).to be_truthy
      end
    end

    describe 'when not is valid' do
      let(:answer) { 'Resposta certa'}
      let(:case_sensitive) { true }
      it "returs true if is a valid answer" do
        expect(card.valid_answer('resposta certa')).to be_falsey
      end
    end
   describe 'when not is case sensitive' do
      let(:answer) { 'Resposta Certa'}
      let(:case_sensitive) { false }

      it "returs true if is a valid answer" do
        expect(card.valid_answer('resposta certa')).to be_truthy
      end
    end
  end
end
