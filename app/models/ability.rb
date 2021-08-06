class Ability
  include CanCan::Ability

  MANAGEMENT = "Gestión de "

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    if user.is_admin?
      can :manage, :all
    else
      user.roles.each do |role|
        role.permissions.each do |permission|
          case permission.name
          when MANAGEMENT + Permission::MODELS[0] # Usuarios
            can :manage, User
          when MANAGEMENT + Permission::MODELS[1] # Noticias
            can :manage, New
          when MANAGEMENT + Permission::MODELS[2] # Publicidad
            can :manage, Ad
          when MANAGEMENT + Permission::MODELS[3] # Solicitudes
            can :manage, Request
          when MANAGEMENT + Permission::MODELS[4] # Historias
            can :manage, History
          when MANAGEMENT + Permission::MODELS[5] # Reflexiones
            can :manage, Reflection
          when MANAGEMENT + Permission::MODELS[6] # Categorías
            can :manage, Category
          when MANAGEMENT + Permission::MODELS[7] # Razas
            can :manage, Race
          when MANAGEMENT + Permission::MODELS[8] # Donaciones
            can :manage, Donation
          when MANAGEMENT + Permission::MODELS[9] # Roles
            can :manage, Role
          end
        end unless role.permissions.empty?
      end unless user.roles.empty?

      # can :read, :all

      if user.has_role? "Protector"
        can :read, [History]
        can [:create, :update], [History], :user_id => user.id
        cannot :destroy, [History]
        can [:create, :read, :update, :destroy], [Request]
      end

      if user.has_role? "Cuidador Temporal"
        can :read, [History]
        can [:create, :update], [History], :user_id => user.id
        cannot :destroy, [History]
        can [:create, :read, :update, :destroy], [Request]
      end

      if user.has_role? "Entrenador"
        #can :create, [History]
        can :read, [History]
        can [:create, :update], [History], :user_id => user.id
        cannot :destroy, [History]
        can [:create, :read, :update, :destroy], [Request]
      end

      if user.has_role? "Paseador"
        can :read, [History]
        can [:create, :update], [History], :user_id => user.id
        cannot :destroy, [History]
        can [:create, :read, :update, :destroy], [Request]
      end

      if user.has_role? "Veterinario"

        can :read, [History]
        can [:create, :update], [History], :user_id => user.id
        cannot :destroy, [History]
        can [:create, :read, :update, :destroy], [Request]
      end

      if user.has_role? "Padrino"

        can :read, [History]
        can [:create, :update], [History], :user_id => user.id
        cannot :destroy, [History]
        can [:create, :read, :update, :destroy], [Request]
      end

      if user.has_role? "Adoptador"

        can :read, [History]
        can [:create, :update], [History], :user_id => user.id
        cannot :destroy, [History]
        can [:create, :read, :update, :destroy], [Request]
      end

      if user.has_role? "Pensión"

        can :read, [History]
        can [:create, :update], [History], :user_id => user.id
        cannot :destroy, [History]
        can [:create, :read, :update, :destroy], [Request]
      else
        can :read, :all
      end

      if user.has_role? "Veterinario"
        can :read, Ask
        can :update, Ask
        can :destroy, Ask
      else
        can :read, Ask
        can :create, Ask
      end

    end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
