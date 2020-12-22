require 'rails_helper'

RSpec.describe Animal, type: :model do
  before do
    @animal = FactoryBot.build(:animal)
  end

  describe '新規投稿' do
    context '投稿ができる時' do
      it '全て正しく入力していると投稿できる' do
        expect(@animal).to be_valid
      end
    end

    context '投稿できない時' do
      it 'sexが空だと投稿できない' do
        @animal.sex = nil
        @animal.valid?
        expect(@animal.errors.full_messages).to include("Sex can't be blank")
      end
      it 'old_year_idが空だと投稿できない' do
        @animal.old_year_id = nil
        @animal.valid?
        expect(@animal.errors.full_messages).to include("Old year can't be blank")
      end
      it 'old_month_idが空だと投稿できない' do
        @animal.old_month_id = nil
        @animal.valid?
        expect(@animal.errors.full_messages).to include("Old month can't be blank")
      end
      it 'vaccineが空だと投稿できない' do
        @animal.vaccine = nil
        @animal.valid?
        expect(@animal.errors.full_messages).to include("Vaccine can't be blank")
      end
      it 'sterilizationが空だと投稿できない' do
        @animal.sterilization = nil
        @animal.valid?
        expect(@animal.errors.full_messages).to include("Sterilization can't be blank")
      end
      it 'characterが空だと投稿できない' do
        @animal.character = nil
        @animal.valid?
        expect(@animal.errors.full_messages).to include("Character can't be blank")
      end
      it 'reasonが空だと登録できない' do
        @animal.reason = nil
        @animal.valid?
        expect(@animal.errors.full_messages).to include("Reason can't be blank")
      end
      it 'prefecture_idが空だと投稿できない' do
        @animal.prefecture_id = nil
        @animal.valid?
        expect(@animal.errors.full_messages).to include("Prefecture can't be blank")
      end
      it 'transfer_costが空だと投稿できない' do
        @animal.transfer_cost = nil
        @animal.valid?
        expect(@animal.errors.full_messages).to include("Transfer cost can't be blank")
      end
      it 'transfer_termsが空だと投稿できない' do
        @animal.transfer_terms = nil
        @animal.valid?
        expect(@animal.errors.full_messages).to include("Transfer terms can't be blank")
      end
      it 'imageが空だと投稿できない' do
        @animal.image = nil
        @animal.valid?
        expect(@animal.errors.full_messages).to include("Image can't be blank")
      end
    end
  end
end
