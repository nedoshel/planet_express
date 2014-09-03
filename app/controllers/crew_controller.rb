class CrewController <  ApplicationController

  respond_to :json

  def index
    # @crew = Crew.none
    @crew = Crew.all
  end

end