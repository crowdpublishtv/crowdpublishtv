class MerchandisesController < ApplicationController
  before_action :set_merchandise, only: [:show, :edit, :update]
  layout :resolve_layout

  # GET /merchandises/1
  def show
    @author = User.find(@merchandise.user_id)
  end

  # GET /merchandises/new
  def new
    @merchandise = Merchandise.new
  end

  def edit
    #inside body taken care of by before_action
  end

  # POST /merchandises
  def create
    @merchandise = current_user.merchandises.build(merchandise_params)
    if @merchandise.save 
      @merchandise.get_youtube_id
      redirect_to user_profile_path(current_user.permalink), notice: 'Reward was successfully created.'
    else
      flash.now[:notice] = "Your merchandise was not saved. Check the required info (*), filetypes, or character counts."
      render :new
    end
  end

  # PATCH/PUT /merchandises/1
  def update
    @merchandise = Merchandise.find(params[:id])
    if @merchandise.update(merchandise_params)
      @merchandise.get_youtube_id
      redirect_to @merchandise, notice: 'Reward was successfully updated.'
    else 
      render action: 'edit'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merchandise
      @merchandise = Merchandise.find(params[:id])
      @user = User.find(@merchandise.user_id)
      @expiredmerch = @user.merchandises.where("deadline < ?", Date.today)
      notexpiredmerch = @user.merchandises.where("deadline > ? OR deadline IS NULL", Date.today)
      deadlineorder = notexpiredmerch.order(deadline: :asc)

      if deadlineorder.all[1].present?
        @sidebarmerchandise = deadlineorder.all[0..0] + deadlineorder.all[1..-1].sort_by(&:price)
      else
        @sidebarmerchandise = deadlineorder.all[0..0]
      end
    end

    def merchandise_params
      params.require(:merchandise).permit(:name, :user_id, :price, :desc, :itempic,
       :deadline, :youtube, :audio, :video, :graphic, :merchmobi, :merchepub, :merchpdf, :buttontype)
    end

    def resolve_layout
      case action_name
      when "show", "edit"
        'userpgtemplate'
      else
        'application'
      end
    end
end