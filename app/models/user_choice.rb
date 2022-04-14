class UserChoice < ApplicationRecord
  belongs_to :user
  belongs_to :choice

  def update
    user_choice = UserChoice.find_by(id: params[:id])
    user_choice.update(user_choice_params)
    render json: user_choice

  end

  private
  
  def user_choice_params
    params.permit(:user_id, :choice_id)
  end

end
