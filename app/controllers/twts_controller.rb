class TwtsController < ApplicationController
   before_action :set_twt,only: [:edit, :update,:destroy]
   
   def index
    @twts = Twt.all
   end
  
  def new
    if params[:back]
      @twt = Twt.new(twt_params)
    else
      @twt = Twt.new
    end
  end
  
  def show
    @twt = Twt.find(params[:id])
  end
  
  def create
    @twt = Twt.new(twt_params)
    if @twt.save
    redirect_to twts_path, notice: "つぶやきを作成しました！"
    else
      render 'new'
    end
  end
  
  def edit
    @twt = Twt.find(params[:id])
  end
  
  def update
    @twt = Twt.find(params[:id])
    if @twt.update(twt_params)
      redirect_to twts_path,notice:"つぶやきを編集しました！"
    else
      render 'edit'
    end
  end
  
  def destroy
    @twt.destroy
    redirect_to twts_path, notice:"つぶやきを削除しました！"
  end
  
  def confirm
    @twt = Twt.new(twt_params)
  end
  
  
  def twt_params
    params.require(:twt).permit(:content)
  end
  
  
  def set_twt
    @twt = Twt.find(params[:id])
  end
end