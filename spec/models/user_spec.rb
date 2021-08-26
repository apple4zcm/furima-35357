require 'rails_helper'

RSpec.describe User, type: :model do
  describe '新規登録' do
    it 'nicknameが空では登録できない' do
      user = User.new(nickname: '', email: 'test@example', password: 'aaa111', password_confirmation: 'aaa111')
      user.valid?
      expect(user.errors.full_messages).to include("Nickname can't be blank")
    end
    it 'emaiが空では登録できない' do
    end
  end
end
