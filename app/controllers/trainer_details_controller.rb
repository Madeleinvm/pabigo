class TrainerDetailsController < ApplicationController
  def new
  end

  def create
    @trainer_detail = TrainerDetail.new(trainer_params)
    #@trainer_detail.assign_attributes({:user_id => current_user.id})
    @trainer_detail.assign_attributes({:status => 'Aprobado'})
    if @trainer_detail.save

      if params[:images_attributes]
        params[:images_attributes]['image'].each do |a|
          @image_attachment = @trainer_detail.images.create!(:picture => a, :name => 'Trainer')
        end
      end
      
      #Se creó el detalle del entrenador con sus imagenes correctamente
      redirect_to trainer_details_path
      
    else
      flash.now[:danger] = "Detalle del entrenador no se ha podido crear, por favor revise los campos"
      render 'new'
    end
  end
  
  def show
    @trainer_details = TrainerDetail.find(params[:id])
  end

  def update
    @trainer_detail = TrainerDetail.find(params[:id])
    if @trainer_detail.update(trainer_params)
        redirect_to trainer_details_actiontrainer_path
    else
      render :edit
    end
  end
  
  def edit
    @trainer_detail = TrainerDetail.find(params[:id])
  end

  def index
    refresh_trainer
    @trainer_details = TrainerDetail.all
    .paginate(page: params[:page], per_page: 3)
    .order(id: :asc)
  end

  def actiontrainer
    @trainer_detail = TrainerDetail.all
  end

  def destroy
    @trainer_detail = TrainerDetail.find(params[:id])
    @trainer_detail.destroy
    redirect_to trainer_details_actiontrainer_path
  end

  private

    def refresh_trainer

      @trainer_details = TrainerDetail.all
      @trainer_details.each do |trainer|

        @feedbacks = Feedback.where(trainer_id: trainer.id)
        @contador = @feedbacks.count(:id)
        
        if @contador == 1
          @promedio = @feedbacks.sum(:points).to_f
        elsif @contador == 0
          @promedio = 0.0
        else
          @promedio = Feedback.where(trainer_id: trainer.id).average(:points) 
        end

        TrainerDetail.update(trainer.id, :qualification => @promedio.round(1))

      end

    end

    def trainer_params
      params.require(:trainer_detail).permit(:status, :description, :qualification)
    end
end
