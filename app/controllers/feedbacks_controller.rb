class FeedbacksController < ApplicationController
  before_action :set_trainer_details, only: [:new]
  before_action :set_users
  before_action :set_feedbacks, only: [:show, :edit, :update, :destroy]

  def index
    if (params[:id_trainer] != nil)
      indexTrainer
    else
      indexWalker
    end
  end

  def indexTrainer
    @trainer_details = TrainerDetail.find(params[:id_trainer])
    @feedbacks = Feedback.where(trainer_id:@trainer_details.id)
                .paginate(page: params[:page], per_page: 6)
                .order(id: :desc)
    @usuario_calificado = User.find(@trainer_details.user_id)
    @perfil_calificado = Profile.where(user_id:@usuario_calificado.id).take
    @entidad_calificada = @trainer_details
  end

  def indexWalker
    @walker = Walker.find(params[:id_walker])
    @feedbacks = Feedback.where(walker_id:@walker.id)
                .paginate(page: params[:page], per_page: 6)
                .order(id: :desc)
    @usuario_calificado = User.find(@walker.user_id)
    @perfil_calificado = Profile.where(user_id:@usuario_calificado.id).take
    @entidad_calificada = @walker
  end

  def new
    @feedback = Feedback.new
  end

  def create
    if (params[:id_train] != nil)
      createFeedTrainer
    else
      createFeedWalker
    end
  end

  def createFeedWalker
    @walker = Walker.find(params[:id_walker])
    @feedback = Feedback.new(new_params)
    @feedback.user_id = current_user.id
    @feedback.walker_id = @walker.id
    
    if @feedback.save
      @contador = Feedback.where(walker_id:@walker.id).count(:id)
      
      if @contador == 1
        @promedio = @feedback.points.to_f
      else
        @promedio = ( @walker.calification*(@contador-1) + @feedback.points.to_f )/@contador.to_f 
      end
      
      if Walker.update(@walker.id, :calification => @promedio.round(1))
        flash[:success] = "Feedback registrado exitosamente"  
      else
        render 'new'  
      end
      redirect_to walkers_path

    else
      flash.now[:danger] = "El feedback no se pudo registrar, revise los campos e intente de nuevo"
      render 'new'
    end
  end

  def createFeedTrainer

    @trainer_details = TrainerDetail.find(params[:id_train])
    @feedback = Feedback.new(new_params)
    @feedback.user_id = current_user.id
    @feedback.trainer_id = @trainer_details.id
    
    if @feedback.save
      @contador = Feedback.where(trainer_id:@trainer_details.id).count(:id)
      
      if @contador == 1
        @promedio = @feedback.points.to_f
      else
        @promedio = ( @trainer_details.qualification*(@contador-1) + @feedback.points.to_f )/@contador.to_f 
      end
      
      if TrainerDetail.update(@trainer_details.id, :qualification => @promedio.round(1))
        flash[:success] = "Feedback registrado exitosamente"  
      else
        render 'new'  
      end
      redirect_to trainer_details_path

    else
      flash.now[:danger] = "El feedback no se pudo registrar, revise los campos e intente de nuevo"
      render 'new'
    end
  end

  def show
    @feedback = Feedback.find(params[:id])
    if @feedback.trainer_id != nil
      @entidad_calificada = TrainerDetail.find(@feedback.trainer_id)
      @tipo = "entrenador"
    else 
      @entidad_calificada = Walker.find(@feedback.walker_id)
      @tipo = "paseador"
    end
    
    @usuario_calificador = User.find(@feedback.user_id)
    @perfil_calificador = Profile.where(user_id:@usuario_calificador.id).take
    @usuario_calificado = User.find(@entidad_calificada.user_id)
    @perfil_calificado = Profile.where(user_id:@usuario_calificado.id).take
  end

  def edit
    @feedback = Feedback.find(params[:id])
    
  end

  def update
    @feedback = Feedback.find(params[:id])
    @trainer_details = TrainerDetail.find(@feedback.trainer_id)

    if @feedback.update(new_params)
      @contador = Feedback.where(trainer_id:@trainer_details.id).count(:id)
      
      if @contador == 1
        @promedio = @feedback.points.to_f
      else
        @promedio = Feedback.where(trainer_id:@trainer_details.id).sum(:points).to_f/@contador.to_f 
      end
      
      if TrainerDetail.update(@trainer_details.id, :qualification => @promedio.round(1))
        flash[:success] = "Feedback modificado exitosamente"  
      else
        render 'edit'  
      end
      redirect_to trainer_details_path

    else
      flash.now[:danger] = "El feedback no se pudo modificar, por favor revise los campos"
      render 'edit'
    end
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    if @feedback.trainer_id != nil
     
      @trainer_details = TrainerDetail.find(@feedback.trainer_id)
      @feedback.destroy
      @contador = Feedback.where(trainer_id:@trainer_details.id).count(:id)
      
      if @contador == 1
        @promedio = @feedback.points.to_f
      elsif @contador == 0
        @promedio = 0.0
      else
        @promedio = Feedback.where(trainer_id:@trainer_details.id).sum(:points).to_f/@contador.to_f 
      end
      
      TrainerDetail.update(@trainer_details.id, :qualification => @promedio.round(1))
  
      flash[:warning] = "Calificación eliminada para siempre"
      redirect_to trainer_details_path

    else

      @walker = Walker.find(@feedback.walker_id)
      @feedback.destroy
      @contador = Feedback.where(walker_id:@walker.id).count(:id)

      if @contador == 1
        @promedio = @feedback.points.to_f
      elsif @contador == 0 
        @promedio = 0.0
      else
        @promedio = Feedback.where(walker_id:@walker.id).sum(:points).to_f/@contador.to_f 
      end
    
      Walker.update(@walker.id, :calification => @promedio.round(1))

      flash[:warning] = "Calificación eliminada para siempre"
      redirect_to walkers_path
    end

  end

  private

    def set_trainer_details
      if (params[:id] == nil)
        @trainer_details = Walker.find(params[:id_walker])
      else  
        @trainer_details = TrainerDetail.find(params[:id])
      end
    end

    def set_users
      @users = User.all
    end

    def set_feedbacks
      @feedbacks = Feedback.all
    end

    def new_params
      params.require(:feedback).permit( :points, :comment )
    end

  end
