class InitiativesController < ApplicationController
  def new
    @initiative = Initiative.new
    @initiatives = Initiative.all
  end

  def create
    @initiative = Initiative.new(user_params)
      if @initiative.save
        redirect_to  new_initiatives_path
      end
    end
private
    def user_params
        params.require(:initiative).permit(:name, :ref)
      end
end
