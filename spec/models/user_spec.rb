require 'rails_helper'

RSpec.describe User, type: :model do
  # 名前、メール、パスワード, パスワード確認があれば有効な状態であること
  it "is valid with a first name, last name, email, and password" do
    user = User.new(
      name: "Example User",
      email: "user@example.com",
      password: "foobar",
      password_confirmation: "foobar"
    )
    expect(user).to be_valid
  end
end
