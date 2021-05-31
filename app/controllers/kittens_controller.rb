class KittensController < ApplicationController
  def index
    @kitten = Kitten.all

    flash.now[:notice] = "We have exactly #{@kitten.size} kitties registered!"

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @kitten.to_json }
    end
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
  end

  def show
    @kitten = Kitten.find(params[:id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @kitten.to_json }
    end
  end
  


  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.find(params[:id])
    if @kitten.update(kitten_params)
      redirect_to @kitten, notice: "Kitty updated!  Meow"
    else
      redirect_to edit_kitten_path, alert: "Kitty update failed!  Oh no.  Meow."
    end
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy
    
    redirect_to root_path, notice: "Kitty gone now.  Meow"
  end

  private
  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
