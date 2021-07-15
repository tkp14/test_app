# params = { user: {name: 'みんせつ太郎', email: 'test@msetsu.com'} }
class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    @user.save
  end

  private

    def user_params
      params.require(:user).permit(:name, :email)
    end
end
