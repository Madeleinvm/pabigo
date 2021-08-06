class WalkersController < ApplicationController

    def new
      if ( current_user == nil)
        flash[:danger] = "Debe estar logeado"
        redirect_to new_user_session_path
      else

      end
    end
  
    def create
      @walker = Walker.new(walker_params)
      @walker.assign_attributes({:user => current_user})
      @walker.assign_attributes({:calification => 0})
      @walker.assign_attributes({:role_id => 5})
      @walker.assign_attributes({:status => 'Aprobado'})
      if @walker.save
        flash[:success] = "Felicidades se ha postulado exitosamente"
        if params[:images_attributes]
          params[:images_attributes]['image'].each do |a|
            @image_attachment = @walker.images.create!(:picture => a, :name => 'Walker')
          end
        end
        
        #Se creó el detalle del entrenador con sus imagenes correctamente
        redirect_to walkers_path
        
      else
        flash.now[:danger] = "No se ha podido crear, por favor revise los campos"
        render 'new'
      end
    end
    
    def show
      @walkers = Walker.find(params[:id])
    end
  
    def update
      @walkers = Walker.find(params[:id])
      if @walkers.update(walker_params)
        flash[:success] = "El perfil ha sido modificada exitosamente"
        redirect_to walkers_path
      else
        flash.now[:danger] = "El perfil no se pudo modificar, por favor revise los campos"
        render :edit
      end
    end
    
    def edit
      @walker = Walker.find(params[:id])
    end
  
    def index
      refresh_walker
      @walkers = Walker.all
      @search = Walker.search(params[:q])
      @walkers = @search.result.paginate(page: params[:page], per_page: 3).order(id: :asc)

    end
  
    def actionwalker
      @walkers = Walker.all
    end
  
    def destroy
      @walker = Walker.find(params[:id])
      if @walker.destroy!
        redirect_to walkers_path
      end
    end
  
    private
  
      def walker_params
        params.require(:walker).permit(:status, :description, :role_id, :start_time, 
        :end_time, :day, :city, :date_of_birth, :calification,
        user_attributes: [:id, :email])
      end

      def refresh_walker

        @walkers = Walker.all
        @walkers.each do |walker|
  
          @feedbacks = Feedback.where(walker_id: walker.id)
          @contador = @feedbacks.count(:id)
          
          if @contador == 1
            @promedio = @feedbacks.sum(:points).to_f
          elsif @contador == 0
            @promedio = 0.0
          else
            @promedio = Feedback.where(walker_id: walker.id).average(:points) 
          end
  
          Walker.update(walker.id, :calification => @promedio.round(1))
  
        end
  
      end
end
