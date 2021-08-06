class PhonesController < UserBaseController
  respond_to :html, :js
  before_action :set_phone, only: [:edit, :update, :destroy]
  
  def new
    @phone = Phone.new
  end

  def create
    @phone = Phone.new(phone_params)
    @phone.phoneable_type = "User"
    @phone.phoneable_id = current_user.id
    @phone.save
  end

  def update
    @phone.update_attributes(phone_params)
  end

  def index
    @phones = current_user.phones
  end

  def destroy
    @phone.destroy
  end

  private

    def phone_params
      params.require(:phone).permit(:number, :phone_type_id)
    end

    def set_phone
      @phone = Phone.find(params[:id])
    end
end
