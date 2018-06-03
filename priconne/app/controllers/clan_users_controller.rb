class ClanUsersController < ApplicationController
  before_action :set_clan_user, only: [:show, :edit, :update, :destroy]

  # GET /clan_users
  # GET /clan_users.json
  def index
    @clan_users = ClanUser.all
  end

  # GET /clan_users/1
  # GET /clan_users/1.json
  def show
  end

  # GET /clan_users/new
  def new
    @clan_user = ClanUser.new
  end

  # GET /clan_users/1/edit
  def edit
  end

  # POST /clan_users
  # POST /clan_users.json
  def create
    @clan_user = ClanUser.new(clan_user_params)

    respond_to do |format|
      if @clan_user.save
        format.html { redirect_to @clan_user, notice: 'Clan user was successfully created.' }
        format.json { render :show, status: :created, location: @clan_user }
      else
        format.html { render :new }
        format.json { render json: @clan_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clan_users/1
  # PATCH/PUT /clan_users/1.json
  def update
    respond_to do |format|
      if @clan_user.update(clan_user_params)
        format.html { redirect_to @clan_user, notice: 'Clan user was successfully updated.' }
        format.json { render :show, status: :ok, location: @clan_user }
      else
        format.html { render :edit }
        format.json { render json: @clan_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clan_users/1
  # DELETE /clan_users/1.json
  def destroy
    @clan_user.destroy
    respond_to do |format|
      format.html { redirect_to clan_users_url, notice: 'Clan user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clan_user
      @clan_user = ClanUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clan_user_params
      params.require(:clan_user).permit(:name, :position, :clan_user_id)
    end

end
