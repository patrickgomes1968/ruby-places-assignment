class Point

  attr_accessor :longitude, :latitude

  def to_hash
    { type: "Point", coordinates: [@longitude, @latitude] }
  end

  def initialize(params)
    if !params[:type]
      @longitude = params[:lng]
      @latitude = params[:lat]
    elsif #hash input
      @longitude = params[:coordinates][0]
      @latitude = params[:coordinates][1]
    end
  end
  
end
