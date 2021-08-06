module AdModule
    extend ActiveSupport::Concern    

    def adContent
        @ads = Ad.all
    end
    
end