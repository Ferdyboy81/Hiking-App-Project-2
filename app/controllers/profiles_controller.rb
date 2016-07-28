class ProfilesController < ApplicationController

before_action :authenticate_user!
before_action :get_profile, only: [:edit, :update]
before_action :set_profile, only: [ :edit, :update, :destroy]
before_action :review_owner, only: [:destroy, :edit, :update]


  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.where(user_id: current_user.id)
    @trails = Trail.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  

  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit

  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    @profile.save

    respond_to do |format|
      if @profile.save
        format.html { redirect_to profiles_path, notice: 'Photo was successfully uploaded.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_path(@profile), notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:name, :description, :image)
    end

    def review_owner
      unless current_user.id == @profile.user_id
        flash[:notice] = 'Error'
        redirect_to trail_name_path(@trails)
      end
    end

    def get_profile
   @profile = current_user.profile
end

end
