class AskController < ApplicationController
  # load_and_authorize_resource


# En lugar de index se usaron controladores tipo gatos y perros que simulan el index_ads_on_user_id
# con la finalidad de tener una seccion tanto para gatos y Perros
# con su respectiva paginacion y el orden ascendente en que los muestra
# Ask.order me hace un select sql donde me trae por la fecha de creacion

  def gatos
    @asks = Ask.order(created_at: :asc).paginate(:page => params[:page], :per_page => 12).order(created_at: :asc)
  end

  def perros
    @asks = Ask.order(created_at: :asc).paginate(:page => params[:page], :per_page => 12).order(created_at: :asc)
  end

  # El new me permite crear preguntas tanto de perros como de gatos

  def new
    @ask = Ask.new
  end

  # El show no se utilizo, pero no lo borre por seguir convenciones

  def show
     @ask = Ask.find(params[:id])
  end

  # El create me permite guardar el atributo answer debido a que campo y answer estan Enum
  # la misma entidad
  # y me facilita hacer las validaciones, ya que al crear la pregunta verifica si la respuesta esta vacia
  # Ademas dependiento de lo que seleccione el usuario va a renderear a perros o Gatos

  # Otorgandole un ticket para que se guie de cual fue su preguntas
  # a donde lo podra ver en la seccion de perros y gatos

  def create
    @ask = Ask.new(ask_params)
    # if user_signed_in?
    #   @ask.user = current_user
    # end
    if  @ask.campo.size >= 10
      @ask.answer = 'primera vez'
    end
    if @ask.save
      @ask.answer = nil
      redirect_to action: "new"
      if @ask.tipo == "Perros"
        flash[:success] = "Felicidades!, Su ticket es el ##{@ask.id} en la sección de preguntas y respuesta de los Perros. En breve un veterinario le contestara su pregunta."
      elsif @ask.tipo == "Gatos"
        flash[:success] = "Felicidades!, Su ticket es el ##{@ask.id} en la sección de preguntas y respuesta de los Gatos. En breve un veterinario le contestara su pregunta."
      end
    else
      render 'new'
    end
  end

  # El edit es un responder y solo el Veterinario tiene los privilegios de modificar

  def edit
    @ask = Ask.find(params[:id])
  end


  # Me permite actualizar el id con respecto a la respuestas
  # y en caso de que el usuario se registre ya tomaria su nombre
  # para asi mostrarlo en view de mvc

  def update
    @ask = Ask.find(params[:id])
    if user_signed_in?
      if @ask.user_id == 1
        @ask.doctor = "Administrador"
      else
        @ask.doctor = current_user.profile.name
      end
      @ask.user = current_user
    end
    if @ask.update(ask_params)
      if @ask.tipo == "Gatos"
        redirect_to action: "gatos"
      else
        redirect_to action: "perros"
      end
    else
      render 'edit'
    end
  end

  # destruye la pregunta con la respuesta y me redirige
  # a la accion de perros o gatos, como lo haya seleccionado el usuario en si

  def destroy
    @ask = Ask.find(params[:id])
    if @ask.tipo == "Perros"
      @ask.destroy
      redirect_to action: "perros"
    else
      @ask.destroy
      redirect_to action: "gatos"
    end
  end

  # evita que el usuario experto coloque atributos de mas y altere la db

  private
    def ask_params
      params.require(:ask).permit(:campo, :answer, :user_id, :tipo)
    end

end
