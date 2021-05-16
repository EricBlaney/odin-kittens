class KittensController < ApplicationController
  def index
    @kitten = Kitten.all
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      redirect_to @kitten, notice:  "Successful Kitten Kreation.  Meow."
    else
      redirect_to new_kitten_path, alert: "Failed Kitten Kreation.  Meow."
  end

  def show
  end


  def edit
  end

  def update
  end

  def destroy
  end

  private
  def kitten_params
    params.require(:kitten).permit(:name, :aget, :cuteness, :softness)
  end
end
