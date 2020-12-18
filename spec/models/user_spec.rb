require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '登録できる時' do
      it '全て正しく入力できていると登録できる' do
        expect(@user).to be_valid
      end
    end

    context '登録できない時' do
      it 'nicknameが空だと登録できない' do
        @user.nickname = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'last_nameが空だと登録できない' do
        @user.last_name = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name can't be blank")
      end
      it 'last_nameが英語だと登録できない' do
        @user.last_name = "abc"
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name 名字を入力してください")
      end
      it 'first_nameが空だと登録できない' do
        @user.first_name = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("First name can't be blank")
      end
      it 'first_nameが英語だと登録できない' do
        @user.first_name = "abc"
        @user.valid?
        expect(@user.errors.full_messages).to include("First name 名前を入力してください")
      end
      it 'last_name_kanaが空だと登録できない' do
        @user.last_name_kana = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name kana can't be blank")
      end
      it 'last_name_kanaは全角（カタカナ）が必須である' do
        @user.last_name_kana = "あいう"
        @user.valid?
        expect(@user.errors.full_messages).to include("Last name kana 名字（カナ）を入力してください")
      end
      it 'first_name_kanaが空だと登録できない' do
        @user.first_name_kana = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("First name kana can't be blank")
      end
      it 'first_name_kanaは全角（カタカナ）が必須である' do
        @user.first_name_kana = "あいう"
        @user.valid?
        expect(@user.errors.full_messages).to include("First name kana 名前（カナ）を入力してください")
      end
      it 'prefecture_idが0だと登録できない' do
        @user.prefecture_id = 0
        @user.valid?
        expect(@user.errors.full_messages).to include("Prefecture 都道府県を選択してください")
      end
      it 'cityが空だと登録できない' do
        @user.city = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("City can't be blank")
      end
      it 'old_idが0だと登録できない' do
        @user.old_id = 0
        @user.valid?
        expect(@user.errors.full_messages).to include("Old 年齢を選択してください")
      end
      it 'genderが空だと登録できない' do
        @user.gender = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Gender can't be blank")
      end
    end
  end
end
